GDPC                �                                                                         T   res://.godot/exported/133200997/export-1753c997600d68ab5d20ae99fddb15c6-player.scn  @	      y      h�m�"��ė����    P   res://.godot/exported/133200997/export-2ddd04d543d5858e7f20c9299a8b5096-main.scn�      j      ����fi?s�W=d��    T   res://.godot/exported/133200997/export-bf9ff4ca8572d2aca1f149564990a509-bounce.scn          �      H*�����!���k~��D    T   res://.godot/exported/133200997/export-e6a36a133c678521ba0b27b0e7a4e7e3-square.scn  �      w      ��Bv:���3HO�    ,   res://.godot/global_script_class_cache.cfg  P)             ��Р�8���8~$}P�    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex�      �      �̛�*$q�*�́     H   res://.godot/imported/player.png-b12d81cacd41edd115dbd315254b5ad9.ctex  �      ^       @_� $"s8_��+��    H   res://.godot/imported/square.png-734930e7cff888bc92e642ba09d55ab1.ctex  �      ^       @_� $"s8_��+��       res://.godot/uid_cache.bin  0-      s      m�o;���<�M/��^        res://Scenes/bounce.tscn.remap  �'      c       �y�fJ��Ǚ��b���       res://Scenes/main.tscn.remap (      a       F�����X�����        res://Scenes/player.tscn.remap  p(      c       �-�~�f�y6vf:�#T        res://Scenes/square.tscn.remap  �(      c       ;[zΟ����(�[z       res://Scripts/player.gd @      =      �L�@�PO���4�A�        res://Sprites/player.png.import �      �       A��A`tZ4�CQn�         res://Sprites/square.png.import       �       ���~�űՍt�=�-       res://icon.svg  p)      �      C��=U���^Qu��U3       res://icon.svg.import   �&      �       �waR��|qkG��݇�       res://project.binary�.      +      z/��
v^���m    `�>��"?K�qRSRC                    PackedScene            ��������                                            
      resource_local_to_scene    resource_name 	   friction    rough    bounce 
   absorbent    script    custom_solver_bias    size 	   _bundled    
   Texture2D    res://Sprites/square.png wkY�7t      local://PhysicsMaterial_5tibs �         local://RectangleShape2D_28qh1 �         local://PackedScene_gyaay !         PhysicsMaterial                   333?         RectangleShape2D       
      B   B         PackedScene    	      	         names "         Bounce    physics_material_override    metadata/_edit_group_    StaticBody2D 	   Sprite2D 	   modulate    z_index    texture_filter    texture    CollisionShape2D    shape    	   variants                          ��8>��V?��=  �?   ����                               node_count             nodes     #   ��������       ����                                  ����                                       	   	   ����   
                conn_count              conns               node_paths              editable_instances              version             RSRCk2�e8z�7RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       PackedScene    res://Scenes/player.tscn ҆����e   PackedScene    res://Scenes/square.tscn io�b	�$   PackedScene    res://Scenes/bounce.tscn �-����      local://PackedScene_2jhgq          PackedScene          	         names "   	      Main    Node2D    Player 	   position    Square    scale    Square2    Square3    Bounce    	   variants                 
     D  �C         
     D   D
   �A�A  �?
     6D  �C
   ��@  �?
     �C  �C         
     �C  �C
   ��@  �?      node_count             nodes     <   ��������       ����                ���                            ���                                 ���                                 ���                                 ���            	      
             conn_count              conns               node_paths              editable_instances              version             RSRClؘ��RSRC                    PackedScene            ��������                                            
      resource_local_to_scene    resource_name 	   friction    rough    bounce 
   absorbent    script    custom_solver_bias    size 	   _bundled       Script    res://Scripts/player.gd ��������
   Texture2D    res://Sprites/player.png `��䐓o      local://PhysicsMaterial_gmyhc �         local://RectangleShape2D_xmrru          local://PackedScene_emerg 8         PhysicsMaterial             RectangleShape2D       
      B   B         PackedScene    	      	         names "         Player    collision_layer    collision_mask    physics_material_override    max_contacts_reported    contact_monitor 
   can_sleep    script    metadata/_edit_group_    RigidBody2D    CollisionShape2D    shape 	   Sprite2D    texture_filter    texture    VisibleOnScreenNotifier2D    _on_body_entered    body_entered    _on_body_exited    body_exited 0   _on_visible_on_screen_notifier_2d_screen_exited    screen_exited    	   variants    	                                                                              node_count             nodes     2   ��������	       ����                                                                
   
   ����                           ����                                 ����              conn_count             conns                                                                                        node_paths              editable_instances              version             RSRC)���AC�RSRC                    PackedScene            ��������                                            
      resource_local_to_scene    resource_name 	   friction    rough    bounce 
   absorbent    script    custom_solver_bias    size 	   _bundled    
   Texture2D    res://Sprites/square.png wkY�7t      local://PhysicsMaterial_5tibs �         local://RectangleShape2D_28qh1 �         local://PackedScene_qrslb          PhysicsMaterial                      RectangleShape2D       
      B   B         PackedScene    	      	         names "   	      Square    physics_material_override    metadata/_edit_group_    StaticBody2D 	   Sprite2D    texture_filter    texture    CollisionShape2D    shape    	   variants                                                      node_count             nodes        ��������       ����                                  ����                                 ����                   conn_count              conns               node_paths              editable_instances              version             RSRC�`Y��d��extends RigidBody2D

var jump_thrust = 20000
var move_thrust = 1000
var torque = 1000

var can_jump = false


func _integrate_forces(state):
	var velocity = Vector2.ZERO
	var direction = 0
	
	if Input.is_action_pressed("jump") and can_jump:
		velocity += Vector2(0, -jump_thrust)
		can_jump = false
	
	if Input.is_action_pressed("move_right"):
		velocity.x += move_thrust
		direction = 1
	if Input.is_action_pressed("move_left"):
		velocity.x -= move_thrust
		direction = -1
		
	if Input.is_action_pressed("move_down"):
		velocity.y += move_thrust
		
	state.apply_force(velocity)
	state.apply_torque(direction * torque)


func _on_body_entered(body):
	if position.y < body.position.y:
		can_jump = true


func _on_body_exited(_body):
	can_jump = false


func _on_visible_on_screen_notifier_2d_screen_exited():
	get_tree().quit()
�tGST2              ����                          &   RIFF   WEBPVP8L   /� ���������  =[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://dmsupsqy4bh8k"
path="res://.godot/imported/player.png-b12d81cacd41edd115dbd315254b5ad9.ctex"
metadata={
"vram_texture": false
}
 �S�Ew>�/�'GǒGST2              ����                          &   RIFF   WEBPVP8L   /� ���������  �[[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://drdf5vg5q78cn"
path="res://.godot/imported/square.png-734930e7cff888bc92e642ba09d55ab1.ctex"
metadata={
"vram_texture": false
}
 ���.=�N���7�GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�$�n윦���z�x����դ�<����q����F��Z��?&,
ScI_L �;����In#Y��0�p~��Z��m[��N����R,��#"� )���d��mG�������ڶ�$�ʹ���۶�=���mϬm۶mc�9��z��T��7�m+�}�����v��ح�m�m������$$P�����එ#���=�]��SnA�VhE��*JG�
&����^x��&�+���2ε�L2�@��		��S�2A�/E���d"?���Dh�+Z�@:�Gk�FbWd�\�C�Ӷg�g�k��Vo��<c{��4�;M�,5��ٜ2�Ζ�yO�S����qZ0��s���r?I��ѷE{�4�Ζ�i� xK�U��F�Z�y�SL�)���旵�V[�-�1Z�-�1���z�Q�>�tH�0��:[RGň6�=KVv�X�6�L;�N\���J���/0u���_��U��]���ǫ)�9��������!�&�?W�VfY�2���༏��2kSi����1!��z+�F�j=�R�O�{�
ۇ�P-�������\����y;�[ ���lm�F2K�ޱ|��S��d)é�r�BTZ)e�� ��֩A�2�����X�X'�e1߬���p��-�-f�E�ˊU	^�����T�ZT�m�*a|	׫�:V���G�r+�/�T��@U�N׼�h�+	*�*sN1e�,e���nbJL<����"g=O��AL�WO!��߈Q���,ɉ'���lzJ���Q����t��9�F���A��g�B-����G�f|��x��5�'+��O��y��������F��2�����R�q�):VtI���/ʎ�UfěĲr'�g�g����5�t�ۛ�F���S�j1p�)�JD̻�ZR���Pq�r/jt�/sO�C�u����i�y�K�(Q��7őA�2���R�ͥ+lgzJ~��,eA��.���k�eQ�,l'Ɨ�2�,eaS��S�ԟe)��x��ood�d)����h��ZZ��`z�պ��;�Cr�rpi&��՜�Pf��+���:w��b�DUeZ��ڡ��iA>IN>���܋�b�O<�A���)�R�4��8+��k�Jpey��.���7ryc�!��M�a���v_��/�����'��t5`=��~	`�����p\�u����*>:|ٻ@�G�����wƝ�����K5�NZal������LH�]I'�^���+@q(�q2q+�g�}�o�����S߈:�R�݉C������?�1�.��
�ڈL�Fb%ħA ����Q���2�͍J]_�� A��Fb�����ݏ�4o��'2��F�  ڹ���W�L |����YK5�-�E�n�K�|�ɭvD=��p!V3gS��`�p|r�l	F�4�1{�V'&����|pj� ߫'ş�pdT�7`&�
�1g�����@D�˅ �x?)~83+	p �3W�w��j"�� '�J��CM�+ �Ĝ��"���4� ����nΟ	�0C���q'�&5.��z@�S1l5Z��]�~L�L"�"�VS��8w.����H�B|���K(�}
r%Vk$f�����8�ڹ���R�dϝx/@�_�k'�8���E���r��D���K�z3�^���Vw��ZEl%~�Vc���R� �Xk[�3��B��Ğ�Y��A`_��fa��D{������ @ ��dg�������Mƚ�R�`���s����>x=�����	`��s���H���/ū�R�U�g�r���/����n�;�SSup`�S��6��u���⟦;Z�AN3�|�oh�9f�Pg�����^��g�t����x��)Oq�Q�My55jF����t9����,�z�Z�����2��#�)���"�u���}'�*�>�����ǯ[����82һ�n���0�<v�ݑa}.+n��'����W:4TY�����P�ר���Cȫۿ�Ϗ��?����Ӣ�K�|y�@suyo�<�����{��x}~�����~�AN]�q�9ޝ�GG�����[�L}~�`�f%4�R!1�no���������v!�G����Qw��m���"F!9�vٿü�|j�����*��{Ew[Á��������u.+�<���awͮ�ӓ�Q �:�Vd�5*��p�ioaE��,�LjP��	a�/�˰!{g:���3`=`]�2��y`�"��N�N�p���� ��3�Z��䏔��9"�ʞ l�zP�G�ߙj��V�>���n�/��׷�G��[���\��T��Ͷh���ag?1��O��6{s{����!�1�Y�����91Qry��=����y=�ٮh;�����[�tDV5�chȃ��v�G ��T/'XX���~Q�7��+[�e��Ti@j��)��9��J�hJV�#�jk�A�1�^6���=<ԧg�B�*o�߯.��/�>W[M���I�o?V���s��|yu�xt��]�].��Yyx�w���`��C���pH��tu�w�J��#Ef�Y݆v�f5�e��8��=�٢�e��W��M9J�u�}]釧7k���:�o�����Ç����ս�r3W���7k���e�������ϛk��Ϳ�_��lu�۹�g�w��~�ߗ�/��ݩ�-�->�I�͒���A�	���ߥζ,�}�3�UbY?�Ӓ�7q�Db����>~8�]
� ^n׹�[�o���Z-�ǫ�N;U���E4=eȢ�vk��Z�Y�j���k�j1�/eȢK��J�9|�,UX65]W����lQ-�"`�C�.~8ek�{Xy���d��<��Gf�ō�E�Ӗ�T� �g��Y�*��.͊e��"�]�d������h��ڠ����c�qV�ǷN��6�z���kD�6�L;�N\���Y�����
�O�ʨ1*]a�SN�=	fH�JN�9%'�S<C:��:`�s��~��jKEU�#i����$�K�TQD���G0H�=�� �d�-Q�H�4�5��L�r?����}��B+��,Q�yO�H�jD�4d�����0*�]�	~�ӎ�.�"����%
��d$"5zxA:�U��H���H%jس{���kW��)�	8J��v�}�rK�F�@�t)FXu����G'.X�8�KH;���[ >^�h�D��	J��[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://bdthnu2rqdttb"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
 kFUC25X��zF�i�J[remap]

path="res://.godot/exported/133200997/export-bf9ff4ca8572d2aca1f149564990a509-bounce.scn"
���rJ�˘��][remap]

path="res://.godot/exported/133200997/export-2ddd04d543d5858e7f20c9299a8b5096-main.scn"
`��V	*�|;s�8�1[remap]

path="res://.godot/exported/133200997/export-1753c997600d68ab5d20ae99fddb15c6-player.scn"
��? > ����(�$[remap]

path="res://.godot/exported/133200997/export-e6a36a133c678521ba0b27b0e7a4e7e3-square.scn"
���yT˺>ʫlist=Array[Dictionary]([])
j;h�<svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path fill="#478cbf" d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 813 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H447l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z"/><path d="M483 600c3 34 55 34 58 0v-86c-3-34-55-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
��F�SAr�
   �-����   res://Scenes/bounce.tscn��*0���=   res://Scenes/main.tscn҆����e   res://Scenes/player.tscnio�b	�$   res://Scenes/square.tscn`��䐓o   res://Sprites/player.pngwkY�7t   res://Sprites/square.png�y�L�$   res://icon.svg�������V(   res://Export/export.apple-touch-icon.png�,��b\�R   res://Export/export.icon.pngf�W�]   res://Export/export.png�J�'�R��rD�ECFG      application/config/name         2DTest     application/run/main_scene          res://Scenes/main.tscn     application/config/features$   "         4.1    Forward Plus       application/config/icon         res://icon.svg     dotnet/project/assembly_name         2DTest     input/move_left0              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   A   	   key_label             unicode    a      echo          script            InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script         input/move_right0              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   D   	   key_label             unicode    d      echo          script            InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script         input/move_down0              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   S   	   key_label             unicode    s      echo          script            InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script      
   input/jump�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode       	   key_label             unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   W   	   key_label             unicode    w      echo          script            InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script         layer_names/2d_physics/layer_1         square     layer_names/2d_physics/layer_2         player  "?kL