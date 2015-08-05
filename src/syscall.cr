ifdef linux && x86_64
  require "./linux_x64/**"
elsif darwin && x86_64
    require "./darwin_x64/**"
else
  {{ raise "Unsupported platform." }}
end
