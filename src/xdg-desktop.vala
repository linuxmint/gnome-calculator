/*
 * Copyright (C) 2014 Robert Ancell.
 *
 * This program is free software: you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation, either version 2 of the License, or (at your option) any later
 * version. See http://www.gnu.org/copyleft/gpl.html the full text of the
 * license.
 */

private bool is_desktop (string name)
{
    var desktop_name_list = Environment.get_variable ("XDG_CURRENT_DESKTOP");
    if (desktop_name_list == null)
        return false;

    foreach (var n in desktop_name_list.split (":"))
        if (n == name)
            return true;

    return false;
}
