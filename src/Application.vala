/*
 * SPDX-License-Identifier: GPL-3.0-or-later
 * SPDX-FileCopyrightText: 2021 David Peach <mail@davidpeach.co.uk>
 */

public class MyApp : Gtk.Application {
    public MyApp () {
        Object (
            application_id: "com.github.davidpeach.gtkhelloagain",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
        var label = new Gtk.Label ("Hello again world!");

        var main_window = new Gtk.ApplicationWindow (this) {
            default_width = 500,
            default_height = 300,
            title = "Hello Again!"
        };

        main_window.add (label);
        main_window.show_all ();
     }

     public static int main (string[] args) {
         return new MyApp ().run (args);
     }
 }
