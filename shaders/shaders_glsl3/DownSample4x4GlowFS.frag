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
    vec4 _197 = texture(Texture0Texture, VARYING1.xy);
    float _235 = _197.x;
    vec4 _203 = texture(Texture0Texture, VARYING1.zw);
    float _270 = _203.x;
    vec4 _209 = texture(Texture0Texture, VARYING2.xy);
    float _305 = _209.x;
    vec4 _215 = texture(Texture0Texture, VARYING2.zw);
    float _340 = _215.x;
    _entryPointOutput = ((((vec4(_235, _197.yz, 1.0) * max(1.0 - _197.w, CB1[7].x * pow(clamp(max(max(_235, _197.y), _197.z), 0.0, 1.0), CB1[7].y))) + (vec4(_270, _203.yz, 1.0) * max(1.0 - _203.w, CB1[7].x * pow(clamp(max(max(_270, _203.y), _203.z), 0.0, 1.0), CB1[7].y)))) + (vec4(_305, _209.yz, 1.0) * max(1.0 - _209.w, CB1[7].x * pow(clamp(max(max(_305, _209.y), _209.z), 0.0, 1.0), CB1[7].y)))) + (vec4(_340, _215.yz, 1.0) * max(1.0 - _215.w, CB1[7].x * pow(clamp(max(max(_340, _215.y), _215.z), 0.0, 1.0), CB1[7].y)))) * 0.25;
}

//$$Texture0Texture=s0
