#
# Be sure to run `pod lib lint VoiceConverter.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'VoiceConverter'
  s.version          = '0.0.1'
  s.summary          = 'amr和wav音频格式相互转换'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  AMR格式的音频压缩比高，音质相对差很适合录制人声，所以通常做语音即时消息时，会选择AMR格式的音频。iOS默认录制的是WAV格式的音频，Android不支持WAV，因此
  在iOS端录制完音频后，需要将其转换成AMR格式。该库抽取了腾讯云IM中的音频转换实现，封装成了pod。
                       DESC

  s.homepage         = 'https://github.com/runryan/VoiceConverter'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ryan' => 'mob_developer@163.com' }
  s.source           = { :git => 'https://github.com/runryan/VoiceConverter.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'VoiceConverter/Classes/**/*'
  
  # s.resource_bundles = {
  #   'VoiceConverter' => ['VoiceConverter/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.library = 'c++'
  s.vendored_library = 'VoiceConverter/libs/libopencore-amrnb.a', 'VoiceConverter/libs/libopencore-amrwb.a'
end
