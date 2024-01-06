const std = @import("std");

const c = @cImport({
    @cInclude("CoreFoundation/CFString.h");
    @cInclude("CoreFoundation/CFCGTypes.h");
});

pub fn main() !void {
    // Use CoreFoundation
    const name = c.CFStringCreateWithCString(null, "hi", c.kCFStringEncodingUnicode);
    defer c.CFRelease(name);

    std.debug.print("it builds and runs\n", .{});
}
