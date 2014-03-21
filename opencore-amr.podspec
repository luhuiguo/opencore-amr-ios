Pod::Spec.new do |s|

  s.name         = "opencore-amr"
  s.version      = "0.1.3"
  s.summary      = "A iOS perbuilt lib for opencore-amr."
  s.license      = { :type => 'Apache License Version 2.0', :file => 'LICENSE' }
  s.homepage     = "http://opencore-amr.sourceforge.net/"

  s.author       = { "Lu Huiguo" => "luhuiguo@gmail.com" }

  s.source  = { :git => "https://github.com/luhuiguo/opencore-amr-ios.git", :tag => s.version.to_s }

  s.source_files = '**/*.h'
  s.preserve_paths = '**/*.a'
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/opencore-amr/include', 'LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/opencore-amr/lib" }

  s.libraries = 'libopencore-amrnb', 'libopencore-amrwb'
end
