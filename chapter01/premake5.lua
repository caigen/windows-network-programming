workspace "chapter1"
	location "build"
	configurations {
		"Debug", 
		"Release"
	}
	filter { "configurations:Debug" }
		defines { "DEBUG" }
		symbols "On"
	filter { "configurations:Release" }
		defines { "NDEBUG" }
		optimize "On"

project "tcpclient"
	location "build"
	kind "ConsoleApp"
	language "C++"
	files {
		"tcpclient/*.h",
		"tcpclient/*.cpp",
	}
	links {
		"ws2_32.lib"
	}

project "tcpserver"
	location "build"
	kind "ConsoleApp"
	language "C++"
	files {
		"tcpserver/*.h",
		"tcpserver/*.cpp",
	}
	links {
		"ws2_32.lib"
	}

project "udpsender"
	location "build"
	kind "ConsoleApp"
	language "C++"
	files {
		"udpsender/*.h",
		"udpsender/*.cpp",
	}
	links {
		"ws2_32.lib"
	}

project "udpreceiver"
	location "build"
	kind "ConsoleApp"
	language "C++"
	files {
		"udpreceiver/*.h",
		"udpreceiver/*.cpp",
	}
	links {
		"ws2_32.lib"
	}
