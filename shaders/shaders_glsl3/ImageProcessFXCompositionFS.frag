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
    vec4 _251 = texture(Texture0Texture, VARYING0);
    vec3 _255 = texture(Texture2Texture, VARYING0).xyz;
    vec4 _258 = texture(Texture3Texture, VARYING0);
    float _262 = 1.0 - _258.w;
    vec3 _268 = _251.xyz;
    vec3 _298 = (_255 + (min(vec3(1.0), (_258.xyz * CB1[4].y) + (_268 * _262)).xyz * (vec3(1.0) - _255))).xyz + (_268 * (clamp(_262 - _251.w, 0.0, 1.0) * _262));
    vec3 _235 = clamp(vec4(_298.x, _298.y, _298.z, _251.w), vec4(0.0), vec4(1.0)).xyz;
    _entryPointOutput = vec4(dot(_235, CB1[1].xyz) + CB1[1].w, dot(_235, CB1[2].xyz) + CB1[2].w, dot(_235, CB1[3].xyz) + CB1[3].w, 1.0);
}

//$$Texture0Texture=s0
//$$Texture2Texture=s2
//$$Texture3Texture=s3
