MRuby::Gem::Specification.new('mruby-gles') do |spec|
  spec.license = 'MIT'
  spec.authors = 'Xuejie Xiao'
  spec.linker.libraries << ENV['GLES_LINK_LIBRARY'] if ENV['GLES_LINK_LIBRARY']
  spec.linker.flags_after_libraries << ENV["GLES_LINK_FLAG"] if ENV['GLES_LINK_FLAG']
  spec.cc.defines << 'MRB_USE_GLFW3' if build.cc.search_header_path 'GLFW/glfw3.h'
end
