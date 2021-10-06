cbuffer cbuff0 : register(b0)
{
	float4 color; //色(RGBA)
	matrix mat; // 3D変換行列
};

//

struct VSoutput
{
	float4 svpos : SV_POSITION;//システム用頂点座標
	float3 normal :NORMAL;//法線ベクトル
	float2 uv : TEXCOORD;//UV座標
};
