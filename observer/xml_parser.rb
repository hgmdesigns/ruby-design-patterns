require 'rexml/parsers/sax2parser'
require 'rexml/sax2listener'

#
# Create an XML parser for our data
#

xml = File.read('plant_catalog.xml')
parser = REXML::Parsers::SAX2Parser.new(xml)

#
# Add some observers to listen for start and end elements...
#

parser.listen(:start_element) do |uri, local, qname, attrs|
  puts "Start element: #{local}"
end

parser.listen(:end_element) do |uri, local, qname, attrs|
  puts "End element: #{local}"
end

#
# Parse the XML
#
parser.parse