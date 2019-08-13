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

in vec2 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
out vec4 _entryPointOutput;

void main()
{
    vec3 _318 = texture(Texture0Texture, VARYING0).xyz;
    vec3 _325 = texture(Texture0Texture, VARYING1.xy).xyz;
    vec3 _332 = texture(Texture0Texture, VARYING1.zw).xyz;
    vec3 _339 = texture(Texture0Texture, VARYING2.xy).xyz;
    vec3 _346 = texture(Texture0Texture, VARYING2.zw).xyz;
    vec3 _353 = texture(Texture0Texture, VARYING3.xy).xyz;
    vec3 _360 = texture(Texture0Texture, VARYING3.zw).xyz;
    vec3 _367 = texture(Texture0Texture, VARYING4.xy).xyz;
    vec3 _374 = texture(Texture0Texture, VARYING4.zw).xyz;
    vec3 _394 = ((((((((((_318 * _318) * 4.0) + ((_325 * _325) * 4.0)) + ((_332 * _332) * 4.0)) + ((_339 * _339) * 4.0)) + ((_346 * _346) * 4.0)) + ((_353 * _353) * 4.0)) + ((_360 * _360) * 4.0)) + ((_367 * _367) * 4.0)) + ((_374 * _374) * 4.0)) * 0.111111111938953399658203125;
    float _472 = max(max(_394.x, _394.y), _394.z);
    _entryPointOutput = vec4(_394 * ((vec3(max(_472 - CB1[7].y, 0.0)) / vec3(_472 + 0.001000000047497451305389404296875)) * CB1[7].x), 1.0);
}

//$$Texture0Texture=s0
