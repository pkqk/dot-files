#!/usr/bin/env ruby

# If you update your tasks, just $ rm ~/.raketabs*
#
# Adapted from 
# http://errtheblog.com/posts/31-rake-around-the-rosie
# Adapted from 
# http://onrails.org/articles/2006/08/30/namespaces-and-rake-command-completion

def rakefile
  File.join(Dir.pwd, 'Rakefile')
end
def capfile
  File.join(Dir.pwd, 'Capfile')
end

def rake_tasks
  if File.exists?(dotcache = File.join(File.expand_path('~'), ".raketabs-#{Dir.pwd.hash}"))
    return File.read(dotcache) if File.mtime(rakefile) < File.mtime(dotcache)
  end
  tasks = `rake --silent --tasks | grep ^rake | cut -d' ' -f2`
  File.open(dotcache, 'w') { |f| f.puts tasks }
  tasks
end

def cap_tasks
  if File.exists?(dotcache = File.join(File.expand_path('~'), ".captabs-#{Dir.pwd.hash}"))
    return File.read(dotcache)
  end
  tasks = `cap -Tv | grep ^cap | cut -d' ' -f2`
  File.open(dotcache, 'w') { |f| f.puts tasks }
  tasks.split("\n")
end

def complete_tasks(cmd)
  return [] unless /\b#{cmd}\b/ =~ ENV["COMP_LINE"]
  return [] unless File.file?(send("#{cmd}file"))
  after_match = $'
  task_match = (after_match.empty? || after_match =~ /\s$/) ? nil : after_match.split.last
  tasks = send("#{cmd}_tasks")
  tasks = tasks.select { |t| /^#{Regexp.escape task_match}/ =~ t } if task_match
  # handle namespaces
  if task_match =~ /^([-\w:]+:)/
    upto_last_colon = $1
    after_match = $'
    tasks = tasks.map { |t| (t =~ /^#{Regexp.escape upto_last_colon}([-\w:]+)$/) ? "#{$1}" : t }
  end
  tasks
end