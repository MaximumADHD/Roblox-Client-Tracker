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

uniform vec4 CB3[65];
uniform vec4 CB1[8];
in vec4 POSITION;
out vec2 VARYING0;

void main()
{
    int _146 = int(POSITION.z);
    vec2 _169 = (POSITION.xy * CB3[0].zw) + CB3[_146 * 1 + 0].zw;
    vec2 _193 = _169;
    _193.y = CB1[7].y - _169.y;
    gl_Position = vec4((vec2(2.0) * ((POSITION.xy * CB3[0].xy) + CB3[_146 * 1 + 0].xy)) + vec2(-1.0), 0.0, 1.0);
    VARYING0 = _193;
}

