require "fileutils"
require "json"

Input = ARGV[0] || "#{__dir__}/foxcats.json"
SvgOutput = ARGV[1] || "svg"
PngOutput = ARGV[2] || "png"

InputDirectory = File.dirname(Input)

FileUtils.mkdir_p(SvgOutput)
FileUtils.mkdir_p(PngOutput)

Header = <<END
<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<svg
  xmlns="http://www.w3.org/2000/svg"
  xmlns:svg="http://www.w3.org/2000/svg"
  width="750px"
  height="750px"
  viewBox="0 0 750 750"
  style="shape-rendering: geometricPrecision">
END

Footer = <<END
</svg>
END

JSON.parse(File.read(Input)).each do |name, layers|
  output = String.new
  output << Header
  output << "<title>#{name}</title>\n"
  output << "<g id=\"#{name}\" style=\"display:inline;opacity:1;fill:none;fill-rule:evenodd;stroke:none;stroke-width:1\">\n"
  output << "<g id=\"foxcatblob\" transform=\"translate(0,8.508816)\" style=\"display:inline;opacity:1\">\n"
  layers.each { |layer| output << File.read("#{InputDirectory}/#{layer}") + "\n" }
  output << "</g>\n"
  output << "</g>\n"
  output << Footer

  svg = "#{SvgOutput}/#{name}.svg"
  png = "#{PngOutput}/#{name}.png"

  File.write(svg, output)

  system("svgexport #{svg} #{png}")
end
