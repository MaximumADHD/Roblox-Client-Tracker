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
uniform sampler2D Texture2Texture;
uniform sampler2D Texture3Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec4 _197 = texture(Texture0Texture, VARYING0);
    vec3 _201 = texture(Texture2Texture, VARYING0).xyz;
    vec4 _204 = texture(Texture3Texture, VARYING0);
    float _208 = 1.0 - _204.w;
    vec3 _214 = _197.xyz;
    vec3 _244 = (_201 + (min(vec3(1.0), (_204.xyz * CB1[4].y) + (_214 * _208)).xyz * (vec3(1.0) - _201))).xyz + (_214 * (clamp(_208 - _197.w, 0.0, 1.0) * _208));
    _entryPointOutput = clamp(vec4(_244.x, _244.y, _244.z, _197.w), vec4(0.0), vec4(1.0));
}

//$$Texture0Texture=s0
//$$Texture2Texture=s2
//$$Texture3Texture=s3
