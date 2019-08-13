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
uniform sampler2D Texture0Texture;

in vec4 VARYING1;
in vec4 VARYING2;
out vec4 _entryPointOutput;

void main()
{
    vec4 _173 = texture(Texture0Texture, VARYING1.xy);
    float _195 = _173.x;
    vec4 _179 = texture(Texture0Texture, VARYING2.zw);
    float _230 = _179.x;
    _entryPointOutput = ((vec4(_195, _173.yz, 1.0) * max(1.0 - _173.w, CB1[7].x * pow(clamp(max(max(_195, _173.y), _173.z), 0.0, 1.0), CB1[7].y))) + (vec4(_230, _179.yz, 1.0) * max(1.0 - _179.w, CB1[7].x * pow(clamp(max(max(_230, _179.y), _179.z), 0.0, 1.0), CB1[7].y)))) * 0.5;
}

//$$Texture0Texture=s0
