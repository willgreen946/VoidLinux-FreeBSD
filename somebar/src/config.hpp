// somebar - dwl bar
// See LICENSE file for copyright and license details.

#pragma once
#include "common.hpp"

constexpr bool topbar = true;

constexpr int paddingX = 8;
constexpr int paddingY = 1;

// See https://docs.gtk.org/Pango/type_func.FontDescription.from_string.html
constexpr const char* font = "ubuntu 10";

constexpr ColorScheme colorInactive = {Color(0xeb, 0xdb, 0xb2), Color(0x28, 0x28, 0x28)};
constexpr ColorScheme colorActive = {Color(0xeb, 0xdb, 0xb2), Color(0x45, 0x85, 0x88)};
constexpr const char* termcmd[] = {"foot", nullptr};

static std::vector<std::string> tagNames = {
	 "", "", "",
         "", "", "",
};

constexpr Button buttons[] = {
	{ ClkStatusText,   BTN_RIGHT,  spawn,      {.v = termcmd} },
};
