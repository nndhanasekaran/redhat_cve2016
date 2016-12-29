Facter.add("kernelstatus") do
  confine :kernel => :linux
  setcode do
    if File.exist? '/tmp/rh-cve-2016-5195_3.sh'
    output = Facter::Core::Execution.exec('/tmp/rh-cve-2016-5195_3.sh')
    output
    end
  output
  end
end

