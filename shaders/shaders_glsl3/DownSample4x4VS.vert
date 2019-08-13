#version 150

struct Params
{
    vec4 TextureSize;
    vec4 Params1;
    vec4 Params2;
    vec4 Params3;
    vec4 Params4;
    vec4 Params5;
    vec4 Params6;
    vec4 Bloom;
};

uniform vec4 CB1[8];
in vec4 POSITION;
out vec2 VARYING0;
out vec4 VARYING1;
out vec4 VARYING2;

void main()
{
    vec2 _226 = (POSITION.xy * 0.5) + vec2(0.5);
    vec2 _191 = CB1[0].zw * 0.25;
    vec2 _195 = _226 + (_191 * vec2(-1.0));
    vec2 _202 = _226 + (_191 * vec2(1.0, -1.0));
    vec2 _209 = _226 + (_191 * vec2(-1.0, 1.0));
    vec2 _216 = _226 + _191;
    gl_Position = POSITION;
    VARYING0 = _226;
    VARYING1 = vec4(_195.x, _195.y, _202.x, _202.y);
    VARYING2 = vec4(_209.x, _209.y, _216.x, _216.y);
}

