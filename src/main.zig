const std = @import("std");
const game = @import("zlib.zig");
pub fn main() u8 {
    // Prints to stderr (it's a shortcut based on `std.io.getStdErr()`)
    std.debug.print("All your {s} are belong to us.\n", .{"codebase"});

    const red = game.Color{ .r = 254, .g = 0, .b = 0, .a = 254 };
    game.initWindow(800, 600, "Toria");
    while (!game.windowShouldClose()) {
        game.beginDrawing();
        game.drawCircle(400, 300, 40.0, red);
        game.endDrawing();
    }

    return 0;
}

test "simple test" {
    var list = std.ArrayList(i32).init(std.testing.allocator);
    defer list.deinit(); // try commenting this out and see if zig detects the memory leak!
    try list.append(42);
    try std.testing.expectEqual(@as(i32, 42), list.pop());
}
