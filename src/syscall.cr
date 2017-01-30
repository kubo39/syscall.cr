module Syscall
  VERSION = "0.1.0"
end

{% if flag?(:linux) && flag?(:x86_64) %}
  require "./linux_x64/*"
{% elsif flag?(:darwin) && flag?(:x86_64) %}
    require "./darwin_x64/*"
{% else %}
  {{ raise "Unsupported platform." }}
{% end %}
