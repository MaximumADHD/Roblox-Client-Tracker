#version 150

struct Params
{
    mat4 World;
    mat4 ViewProjection;
    vec4 Color1;
    vec4 Color2;
};

uniform vec4 CB1[10];
in vec4 POSITION;
in vec2 TEXCOORD0;
in vec4 COLOR0;
out vec2 VARYING0;
out vec4 VARYING1;

void main()
{
    vec4 _114 = POSITION * mat4(CB1[0], CB1[1], CB1[2], CB1[3]);
    vec4 _167 = _114 * mat4(CB1[4], CB1[5], CB1[6], CB1[7]);
    _167.z = 0.0;
    gl_Position = _167;
    VARYING0 = TEXCOORD0;
    VARYING1 = COLOR0 * mix(CB1[9], CB1[8], vec4(clamp(_114.y * 0.0005882352706976234912872314453125, 0.0, 1.0)));
}

