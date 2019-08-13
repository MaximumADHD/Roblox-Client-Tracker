#version 150

uniform sampler2D geomMapTexture;
uniform sampler2D mapTexture;

in vec2 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
out vec4 _entryPointOutput;

void main()
{
    vec4 _200 = texture(geomMapTexture, VARYING0);
    vec4 _204 = texture(mapTexture, VARYING0);
    vec4 _209 = texture(mapTexture, VARYING1.xy);
    vec4 _214 = texture(mapTexture, VARYING1.zw);
    vec4 _219 = texture(mapTexture, VARYING2.xy);
    vec4 _224 = texture(mapTexture, VARYING2.zw);
    float _226 = _200.x;
    bvec4 _254 = lessThan(abs(vec4(_209.y, _214.y, _219.y, _224.y) - vec4(_226)), vec4(0.0007999999797903001308441162109375));
    vec4 _255 = vec4(_254.x ? vec4(1.0).x : vec4(0.0).x, _254.y ? vec4(1.0).y : vec4(0.0).y, _254.z ? vec4(1.0).z : vec4(0.0).z, _254.w ? vec4(1.0).w : vec4(0.0).w);
    float _257 = dot(_255, vec4(1.0));
    float _274 = _200.y;
    float _280 = ((1.0 - _274) * (((abs(_204.y - _226) * _257) > 3.9999998989515006542205810546875e-05) ? (dot(vec4(_209.x, _214.x, _219.x, _224.x), _255) / _257) : _204.x)) + _274;
    _entryPointOutput = vec4(_280, _280, _280, 1.0);
}

//$$geomMapTexture=s3
//$$mapTexture=s2
