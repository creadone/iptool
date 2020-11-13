require "subnet"

module IPtool
  VERSION = "0.1.0"

  DIV_REGEX = /[^\d|\.]+/
  IP4_REGEX = /(?<ip>[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+)/

  input     = ARGF.gets_to_end
  ip_range  = [] of String

  if div_match = input.match(DIV_REGEX)
    div = div_match[0]
    parts = input.split(div)
    parts.each do |part|
      if ip_match = part.match(IP4_REGEX)
        ip_range << ip_match["ip"]
      end
    end
  end

  ip1 = Subnet::IPv4.new ip_range[0]
  ip2 = Subnet::IPv4.new ip_range[1]

  point_range = ip1..ip2

  subnetworks = Subnet::IPv4.summarize(point_range).map(&.to_string)
  subnetworks.each do |subnet|
    puts subnet
  end
end
