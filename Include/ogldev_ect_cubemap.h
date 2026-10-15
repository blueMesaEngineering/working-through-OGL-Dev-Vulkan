/*

        Copyright 2011 Etay Meiri

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

#pragma once

#include <vector>

#include "bitmap.h"
#include <algorithm>        // Included because g++ was throwing a fit about the clamp function not being a member of std, but rather perhaps a member of glm.
                            //      So I included this here for my build of the Vulkan stuff.  Perhaps it is included in the build of OGLDev's entire build system
                            //      in other files, but I am only building the Vulkan components for now, so I am troubleshooting corresponding errors accordingly.
                            //      NDG 2026.10.15.19:43

int ConvertEquirectangularImageToCubemap(const Bitmap& b, std::vector<Bitmap>& Cubemap);