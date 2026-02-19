target("game-engine-patcher")
    set_kind("shared")
    add_files("**.cc")

    add_options("with-logging", "standalone")

    if not has_config("standalone") then
        set_basename("version")
    else
        set_basename("GameEnginePatcher")
    end

    add_links(
        "user32",
        "ws2_32",
        "wldap32",
        "crypt32",
        "normaliz",
        "advapi32",
        "iphlpapi",
        "secur32"
    )

    add_includedirs("../include")

    add_packages("vcpkg::curl", "vcpkg::curl[openssl]", "vcpkg::openssl", "vcpkg::zlib", "vcpkg::nlohmann-json", "vcpkg::pugixml")


