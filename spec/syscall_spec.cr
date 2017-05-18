require "./spec_helper"

describe Syscall do
  it "returns getpid" do
    syscall(GETPID) == Process.pid
  end
end
