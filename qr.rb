# p "Hello World"
require "rqrcode"

puts "What would you like your QR code to do?"

puts "1 website link"
puts "2 for wifi network"
puts "3 to send a text message"

qrcode = RQRCode::QRCode.new("#{qr_code}")


wifi = "WIFI:T:WPA;S:#{network};P:#{npassword};;"

phone = "SMSTO:#{phone_number}:#{message}"

# Use the .as_png method to create a 500 pixels by 500 pixels image
png = qrcode.as_png({ :size => 500 })

# Write the image data to a file
IO.binwrite("sometext.png", png.to_s)


if response == 1
  puts "Please enter a website"
  qrcode = gets.chomp

  qrcode = RQRCode::QRCode.new("#{qr_code}")
  return qrcode
elseif response == 2
puts "Please enter a wifi network, press enter, then enter wifi password."
  wifi = "WIFI:T:WPA;S:#{network};P:#{npassword};;"
else response == 3
  puts "Please enter a vaild phone number and message"
  phone_number = gets.chomp
  message = gets.chomp
  phone = "SMSTO:#{phone_number}:#{message}"
end
