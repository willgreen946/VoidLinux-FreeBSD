// somebar - dwl bar
// See LICENSE file for copyright and license details.

#pragma once
#include "common.hpp"

constexpr bool topbar = true;

constexpr int paddingX = 8;
constexpr int paddingY = 1;

// See https://docs.gtk.org/Pango/type_func.FontDescription.from_string.html
constexpr const char* font = "Ubuntu Mono 10";

constexpr ColorScheme colorInactive = {Color(0xe5, 0xe5, 0xe5), Color(0x00, 0x00, 0x00)};
constexpr ColorScheme colorActive = {Color(0xe5, 0xe5, 0xe5), Color(0xcd, 0x00, 0x00)};
constexpr const char* termcmd[] = {"foot", nullptr};

static std::vector<std::string> tagNames = {
	"", "", "",
	"",
};

constexpr Button buttons[] = {
	{ ClkStatusText,   BTN_RIGHT,  spawn,      {.v = termcmd} },
};
