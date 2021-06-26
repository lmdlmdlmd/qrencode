package = "qrencode"
version = "1.0-0"
source = {
	tag = "",
    file = ""
}
description = {
    summary = "luaqrencode is a QR code library for Lua",
    detailed = [[
        luaqrencode is a wrapper of libqrencode with libpng for lua.
    ]],
    license = "BSD-3-clause",
    homepage = "https://github.com/arcapos/luaqrencode"
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        qrencode = {
            sources = { "qrencode.c" },
            libraries = { "png", "qrencode" },
            libdirs = {"/usr/local/lib"},
						incdirs = {}
        }
    },
}

