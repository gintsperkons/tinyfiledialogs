project "TinyFileDialog"
    kind "StaticLib"
    language "C"

    targetdir("%{wks.location}/Binaries/" .. OutputDir .. "/%{prj.name}")
    objdir("%{wks.location}/Binaries/Intermediates/" .. OutputDir .. "/%{prj.name}")


    files
    {
        "tinyfiledialogs.c",
        "more_dialogs/tinyfd_moredialogs.c"
    }

    includedirs
    {
        "%{prj.location}"
    }

    filter "system:linux"
        pic "On"
        systemversion "latest"
        staticruntime "On"

    filter "system:windows"
        systemversion "latest"
        staticruntime "On"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "On"

    filter "configurations:Release"
        runtime "Release"
        optimize "On"

    filter "configurations:Dist"
        runtime "Release"
        optimize "On"