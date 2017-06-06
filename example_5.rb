require 'csv'

ip_as_number = ARGV[0].split('.')
control_sum = ip_as_number[3].to_i + (ip_as_number[2].to_i * 256) + (ip_as_number[1].to_i * 256 * 256) + (ip_as_number[0].to_i * 256 * 256 * 256)

CSV.foreach('IpToCountry.csv', skip_lines: /^#/) do |row|
  if control_sum > row[0].to_i && control_sum <= row[1].to_i
    puts row[4]
    break
  end
end
