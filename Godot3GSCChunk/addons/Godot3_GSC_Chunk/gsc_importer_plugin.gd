tool
extends ImmediateGeometry
	
func _process(delta):
	var _f = File.new()
	_f.open("res://gamescene/untitled.gsc", File.READ)
	begin(Mesh.PRIMITIVE_TRIANGLES)
	
	var verts1=[]
	var verts2=[]
	var verts3=[]
	var verts4=[]
	var verts5=[]
	var verts6=[]
	var verts7=[]
	var verts8=[]
	var verts9=[]
	var verts10=[]
	var verts11=[]
	var verts12=[]
	
	
	_f.seek(0)
	while _f.get_position() < _f.get_len():
		_f.get_8()
		_f.get_8()
		var stripcount = _f.get_8()
		var flag01 = _f.get_8()
		if flag01 == int(108):
			if stripcount == int(3):
				for j in range(1):
					var vx1 = _f.get_float()
					var vy1 = _f.get_float()
					var vz1 = _f.get_float()
					var faceon1 = _f.get_8()
					_f.get_8()
					_f.get_16()
					
					var vx2 = _f.get_float()
					var vy2 = _f.get_float()
					var vz2 = _f.get_float()
					var faceon2 = _f.get_8()
					_f.get_8()
					_f.get_16()
					
					var vx3 = _f.get_float()
					var vy3 = _f.get_float()
					var vz3 = _f.get_float()
					var faceon3 = _f.get_8()
					_f.get_8()
					_f.get_16()
			elif stripcount == int(4):
				for j in range(1):
					var vx1 = _f.get_float()
					var vy1 = _f.get_float()
					var vz1 = _f.get_float()
					var faceon1 = _f.get_8()
					_f.get_8()
					_f.get_16()
					
					var vx2 = _f.get_float()
					var vy2 = _f.get_float()
					var vz2 = _f.get_float()
					var faceon2 = _f.get_8()
					_f.get_8()
					_f.get_16()
					
					var vx3 = _f.get_float()
					var vy3 = _f.get_float()
					var vz3 = _f.get_float()
					var faceon3 = _f.get_8()
					_f.get_8()
					_f.get_16()
					
					var vx4 = _f.get_float()
					var vy4 = _f.get_float()
					var vz4 = _f.get_float()
					var faceon4 = _f.get_8()
					_f.get_8()
					_f.get_16()
					
					
					verts1.append(vx1)
					verts2.append(vy1)
					verts3.append(vz1)
					verts4.append(vx2)
					verts5.append(vy2)
					verts6.append(vz2)
					verts7.append(vx3)
					verts8.append(vy3)
					verts9.append(vz3)
					verts10.append(vx4)
					verts11.append(vy4)
					verts12.append(vz4)
				_f.get_8()
				_f.get_8()
				var uvcount = _f.get_8()
				var flag02 = _f.get_8()
				if flag02 == int(101):
					for i in range(1):
						var uvx1 = _f.get_16()
						var uvy1 = _f.get_16()
						var uvx2 = _f.get_16()
						var uvy2 = _f.get_16()
						var uvx3 = _f.get_16()
						var uvy3 = _f.get_16()
						var uvx4 = _f.get_16()
						var uvy4 = _f.get_16()
					_f.get_8()
					_f.get_8()
					var vcol_count = _f.get_8()
					var flag03 = _f.get_8()
					if flag03 == int(110):
						for i in range(1):
							var r1 = float(_f.get_8())/127
							var g1 = float(_f.get_8())/127
							var b1 =  float(_f.get_8())/127
							var a1 =  float(_f.get_8())/127
							
							var r2 = float(_f.get_8())/127
							var g2 = float(_f.get_8())/127
							var b2 =  float(_f.get_8())/127
							var a2 =  float(_f.get_8())/127
							
							var r3 = float(_f.get_8())/127
							var g3 = float(_f.get_8())/127
							var b3 =  float(_f.get_8())/127
							var a3 =  float(_f.get_8())/127
							
							var r4 = float(_f.get_8())/127
							var g4 = float(_f.get_8())/127
							var b4 =  float(_f.get_8())/127
							var a4 =  float(_f.get_8())/127
							set_color(Color(r1,g1,b1,a1))
							add_vertex(Vector3(verts1[0],verts2[0],-verts3[0]))
							set_color(Color(r2,g2,b2,a2))
							add_vertex(Vector3(verts4[0],verts5[0],-verts6[0]))
							set_color(Color(r3,g3,b3,a3))
							add_vertex(Vector3(verts7[0],verts8[0],-verts9[0]))
							set_color(Color(r2,g2,b2,a2))
							add_vertex(Vector3(verts4[0],verts5[0],-verts6[0]))
							set_color(Color(r3,g3,b3,a3))
							add_vertex(Vector3(verts7[0],verts8[0],-verts9[0]))
							set_color(Color(r4,g4,b4,a4))
							add_vertex(Vector3(verts10[0],verts11[0],-verts12[0]))
							
							
	end()
	_f.close()

