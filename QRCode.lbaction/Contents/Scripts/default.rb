#!/usr/bin/env ruby
#
# LaunchBar Action Script
#
require './vendor/bundle/bundler/setup'

require 'tmpdir'
require 'json'
require 'securerandom'
require 'fileutils'

require 'rqrcode_png'

tmpdir = Dir.mktmpdir(nil, '/tmp')
qrcode_filename = "#{tmpdir}/#{SecureRandom.hex(13)}.qr.png"
qr = RQRCode::QRCode.new(ARGV.first, :size => 4, :level => :h)
qr.to_img.resize(600, 600).save(qrcode_filename)

items = [
  {
    'title' => 'QRCode',
    'path' => qrcode_filename
  }
]

puts items.to_json
