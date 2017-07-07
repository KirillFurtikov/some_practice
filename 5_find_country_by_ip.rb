FILENAME = './IpToCountry.csv'.freeze

@lines = []

ip = ARGV[0].split('.').map(&:to_i)
ip_representation = ip[3] + (ip[2] * 256) + (ip[1] * 256**2) + (ip[0] * 256**3)

def read_csv_rows(filename)
  File.foreach(filename) do |row|
    @lines << row.match(/^"(\d+)","(\d+)","(.+)","(.+)","(.+)","(.+)","(.+)"/)
  end
  @lines.compact!
end

def get_country_by_ip(rows, ip)
  rows.select do |line|
    line[1].to_i <= ip && line[2].to_i >= ip
  end
end

puts get_country_by_ip(read_csv_rows(FILENAME), ip_representation).first[6]
