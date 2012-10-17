Pod::Spec.new do |s|
  s.name         = "MKNetworkKit"
  s.version      = "0.85"
  s.summary      = "Full ARC based Networking Kit for iOS 4+ devices."
  s.homepage     = "http://mk.sg/8w"
  s.author       = 'Ingenious Med, Inc.', 'MugunthKumar'
  s.source       = { :git => "https://github.com/IngeniousMed/MKNetworkKit.git", :commit => '2f24d84b1bf66f3d0dfbd1fe74d1e36f9247113c' }
  files = FileList['MKNetworkKit/*.{h,m}', 'MKNetworkKit/Categories/*.{h,m}']
  s.ios.source_files =  files.dup.exclude(/NSAlert/)	
  s.osx.source_files =  files.dup.exclude(/UIAlertView/)
  s.ios.frameworks   =  'CFNetwork', 'Security'
  s.osx.frameworks   =  'CoreServices', 'Security'
  s.requires_arc = true
  def s.copy_header_mapping(from)
    from.sub('MKNetworkKit/', '')
  end

  s.dependency 'Reachability', '~> 3.0'

  s.license  = { :type => 'MIT',
                 :text => 'MKNetworkKit is licensed under MIT License
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.' }
end
