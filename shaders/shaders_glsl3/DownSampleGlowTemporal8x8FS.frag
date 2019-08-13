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
uniform sampler2D Texture1Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec3 _301 = texture(Texture0Texture, VARYING0 + (vec2(0.25) * CB1[0].zw)).xyz;
    vec3 _373 = (_301 * _301) * 4.0;
    float _390 = max(max(_373.x, _373.y), _373.z);
    vec3 _404 = _373 * ((vec3(max(_390 - CB1[7].y, 0.0)) / vec3(_390 + 0.001000000047497451305389404296875)) * CB1[7].x);
    vec3 _315 = texture(Texture0Texture, VARYING0 + (vec2(-0.25) * CB1[0].zw)).xyz;
    vec3 _421 = (_315 * _315) * 4.0;
    float _438 = max(max(_421.x, _421.y), _421.z);
    vec3 _452 = _421 * ((vec3(max(_438 - CB1[7].y, 0.0)) / vec3(_438 + 0.001000000047497451305389404296875)) * CB1[7].x);
    vec3 _333 = texture(Texture0Texture, VARYING0 + CB1[1].xy).xyz;
    vec3 _469 = (_333 * _333) * 4.0;
    float _486 = max(max(_469.x, _469.y), _469.z);
    vec3 _340 = texture(Texture1Texture, VARYING0).xyz;
    _entryPointOutput = vec4(sqrt(clamp(mix(_469 * ((vec3(max(_486 - CB1[7].y, 0.0)) / vec3(_486 + 0.001000000047497451305389404296875)) * CB1[7].x), clamp((_340 * _340) * 4.0, min(_404, _452), max(_404, _452)), vec3(CB1[1].z)) * 0.25, vec3(0.0), vec3(1.0))), 1.0);
}

//$$Texture0Texture=s0
//$$Texture1Texture=s1
