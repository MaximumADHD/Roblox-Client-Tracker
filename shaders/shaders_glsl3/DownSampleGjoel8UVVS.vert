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
out vec4 VARYING3;
out vec4 VARYING4;

void main()
{
    vec2 _301 = (POSITION.xy * 0.5) + vec2(0.5);
    vec2 _235 = CB1[0].zw * vec2(0.75, 0.0);
    vec2 _237 = CB1[0].zw * vec2(0.0, 0.75);
    vec2 _239 = CB1[0].zw * vec2(0.705122768878936767578125);
    vec4 _242 = _301.xyxy;
    gl_Position = POSITION;
    VARYING0 = _301;
    VARYING1 = _242 + vec4(_235, _235 * (-1.0));
    VARYING2 = _242 + vec4(_237, _237 * (-1.0));
    VARYING3 = _242 + vec4(_239, _239 * (-1.0));
    VARYING4 = _242 + vec4(CB1[0].zw * vec2(0.705122768878936767578125, -0.705122768878936767578125), CB1[0].zw * vec2(-0.705122768878936767578125, 0.705122768878936767578125));
}

