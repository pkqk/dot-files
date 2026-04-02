# OpenJDK@11 homebrew
if command -v /opt/homebrew/opt/openjdk@11/bin/java >/dev/null 2>&1
then
  paths+=(/opt/homebrew/opt/openjdk@11/bin)
  export JAVA_HOME=/opt/homebrew/opt/openjdk@11/libexec/openjdk.jdk/Contents/Home/
  export CPPFLAGS="-I/opt/homebrew/opt/openjdk@11/include"
fi
