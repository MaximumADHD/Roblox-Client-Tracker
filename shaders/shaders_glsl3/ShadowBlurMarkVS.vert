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

void main()
{
    vec4 _133 = vec4(0.0);
    _133.x = dot(CB1[1], POSITION);
    vec4 _135 = _133;
    _135.y = dot(CB1[2], POSITION);
    vec4 _137 = _135;
    _137.z = 0.5;
    vec4 _139 = _137;
    _139.w = 1.0;
    gl_Position = _139;
}

