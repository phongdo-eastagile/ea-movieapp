platform :ios, '8.0'
inhibit_all_warnings!

project 'EAMovieApp/EAMovieApp.xcodeproj'

def pod_development
    pod 'FontAwesomeKit/FontAwesome'
end

target :EAMovieApp do
    pod_development
end

def pod_test
    pod 'Specta'
    pod 'Expecta'
    pod 'OCMockito'
    pod 'OCMock'
    pod 'OHHTTPStubs'
    pod 'KIF'
end

target :EAMovieAppTests do
    pod_test
end

target :EAMovieAppUITests do
    pod_test
end
