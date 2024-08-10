const ray = @import("raylib.zig");
const std = @import("std");

pub fn initWindow(width: u16, height: u16, title: [:0]const u8) void {
    ray.InitWindow(@intCast(width), @intCast(height), title);
}
pub inline fn windowShouldClose() bool {
    return ray.WindowShouldClose();
}

pub inline fn beginDrawing() void {
    ray.BeginDrawing();
}

pub fn endDrawing() void {
    ray.EndDrawing();
}

pub const Color = packed struct {
    r: u8,
    g: u8,
    b: u8,
    a: u8,

    inline fn asRayColor(self: Color) ray.Color {
        return @bitCast(self);
    }
};

pub inline fn drawCircle(centerX: i32, centerY: i32, radius: f32, color: Color) void {
    ray.DrawCircle(@intCast(centerX), @intCast(centerY), radius, color.asRayColor());
}
