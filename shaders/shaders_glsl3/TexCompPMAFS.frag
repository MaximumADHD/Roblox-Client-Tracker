#version 150

struct Params
{
    vec4 OffsetAndScale;
    vec4 Color;
};

uniform vec4 CB1[2];
uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec4 _105 = texture(DiffuseMapTexture, vec4(VARYING0, 0.0, -10.0).xy, -10.0);
    float _109 = _105.w;
    _entryPointOutput = vec4((_105.xyz * _109) * CB1[1].xyz, _109 * CB1[1].w);
}

//$$DiffuseMapTexture=s0
