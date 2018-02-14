workspace "chapter03"
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

project "resolve"
	location "build"
	kind "ConsoleApp"
	language "C++"
	files {
		"resolve/*.h",
		"resolve/*.cpp",
	}
	links {
		"ws2_32.lib"
	}
