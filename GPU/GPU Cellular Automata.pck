GDPC                                                                               <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stexp      �      3C�J=�����d�u3@   res://.import/world.png-f99131c31fda306b04161be8182aeffb.stex   p_      �      o�Z�(���A��   res://CellularAutomata.tscn @      $
      D��5zT��~h��AH    res://cellular_automata.gd.remap��      ,       @S�/��b)�شI��   res://cellular_automata.gdc p      �      V$L.��Θ�(W���   res://icon.png   �      r      ��{����>���6�<   res://icon.png.import   @9      �      �����%��(#AB�   res://project.binary�     $      m�|:(����.rX܆I�   res://render.shader �;      �      Y� NS�6v-���#�   res://simulation.shader p?      �      ?���NDz�^Cl��W�   res://world.png.import  `�      �      5Me�/z���H��        [gd_scene load_steps=7 format=2]

[ext_resource path="res://render.shader" type="Shader" id=1]
[ext_resource path="res://cellular_automata.gd" type="Script" id=2]
[ext_resource path="res://world.png" type="Texture" id=3]
[ext_resource path="res://simulation.shader" type="Shader" id=4]

[sub_resource type="ShaderMaterial" id=1]
shader = ExtResource( 4 )

[sub_resource type="ShaderMaterial" id=2]
shader = ExtResource( 1 )

[node name="CellularAutomata" type="Node"]
script = ExtResource( 2 )

[node name="CanvasLayer" type="CanvasLayer" parent="."]

[node name="GUI" type="MarginContainer" parent="CanvasLayer"]
anchor_right = 1.0
anchor_bottom = 1.0
custom_constants/margin_right = 20
custom_constants/margin_top = 20
custom_constants/margin_left = 20
custom_constants/margin_bottom = 20
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Selection" type="PanelContainer" parent="CanvasLayer/GUI"]
margin_left = 478.0
margin_top = 20.0
margin_right = 546.0
margin_bottom = 50.0
size_flags_horizontal = 4
size_flags_vertical = 0

[node name="Material" type="HBoxContainer" parent="CanvasLayer/GUI/Selection"]
margin_left = 7.0
margin_top = 7.0
margin_right = 61.0
margin_bottom = 23.0
alignment = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Color" type="ColorRect" parent="CanvasLayer/GUI/Selection/Material"]
margin_right = 16.0
margin_bottom = 16.0
rect_min_size = Vector2( 16, 16 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label" type="Label" parent="CanvasLayer/GUI/Selection/Material"]
margin_left = 20.0
margin_top = 1.0
margin_right = 54.0
margin_bottom = 15.0
text = "Label"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Simulation" type="ViewportContainer" parent="."]
modulate = Color( 0, 0, 0, 0 )
anchor_right = 1.0
anchor_bottom = 1.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Viewport" type="Viewport" parent="Simulation"]
size = Vector2( 1024, 600 )
transparent_bg = true
handle_input_locally = false
disable_3d = true
keep_3d_linear = true
usage = 0
render_target_v_flip = true
render_target_clear_mode = 1
render_target_update_mode = 3
gui_disable_input = true

[node name="World" type="Sprite" parent="Simulation/Viewport"]
material = SubResource( 1 )
texture = ExtResource( 3 )
centered = false

[node name="Brush" type="Polygon2D" parent="Simulation/Viewport"]
visible = false
polygon = PoolVector2Array( -5, -5, 5, -5, 5, 5, -5, 5 )

[node name="Render" type="Node2D" parent="."]
material = SubResource( 2 )

[node name="World" type="Sprite" parent="Render"]
use_parent_material = true
z_index = 1
centered = false
            GDSC   4   !   L   x     ���Ӷ���   ��������Ŷ��   ��������������������Ҷ��   ����������������϶��   �����϶�   �����Ķ�   ����Ҷ��   ������Ӷ   ���������ض�   �������¶���   ����������Ӷ   ����������Ķ   ����   ��������ض��   �������Ӷ���   ׎��   �������Ŷ���   ����׶��   �����¶�   ����¶��   ��������������������ض��   ����޶��   �������ض���   �����������¶���   �����������������ض�   ������������϶��   ������Ҷ   �������Ӷ���   ��������󶶶   ������������������������Ӷ��   �����������   ��������䶶�   ��������Ҷ��   ������������嶶�   �������Ӷ���   ���������������   ��������������������ض��   �����������ζ���   ���������������   ��������������������   ���������������ڶ���   ߶��   ���Ӷ���   ����Ķ��   �����¶�   �����������ڶ���   �������ڶ���   ����ڶ��   ���¶���   ���Ӷ���   �����������   ������Ӷ      color             �         name      Wall   �      D         Dirt   �         Stone             }      �         Water      �      n         Sand   _               Wood      Grass      N         Lava      Fire   �      �      �         Steam                               �                                 0      D      X      l   	   �   
   �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                            !   .  "   /  #   0  $   6  %   <  &   P  '   Q  (   X  )   Y  *   _  +   p  ,   q  -   w  .   }  /   �  0   �  1   �  2   �  3   �  4   �  5   �  6   �  7   �  8   �  9   �  :   �  ;   �  <   �  =      >     ?     @     A   !  B   "  C   2  D   F  E   Z  F   [  G   _  H   `  I   a  J   i  K   v  L   3YY:�  L�  NV�S  P�  R�  R�  R�  QR�  V�  OR�  NV�S  P�  R�  R�  R�  QR�  V�  OR�  NV�S  P�  R�  R�  R�  QR�  V�	  OR�  NV�S  P�
  R�  R�  R�  QR�  V�  OR�  NV�S  P�  R�  R�  R�  QR�  V�  OR�  NV�S  P�  R�  R�  R�  QR�  V�  OR�  NV�S  P�  R�  R�  R�  QR�  V�  OR�  NV�S  P�  R�  R�  R�  QR�  V�  OR�  NV�S  P�  R�  R�  R�  QR�  V�  OR�  NV�S  P�  R�  R�  R�  QR�  V�  ORYMSYY;�  �  Y;�  �  YY0�  PQV�  �  �  W�  �  T�  W�  �	  T�
  PQ�  �  �  W�  �  �  T�  T�  �  YY0�  P�  QV�  &�  V�  �  �  �  (V�  �  �  W�  �	  �  T�  W�  �	  T�
  PQ�  �  �  &�  �  V�  �  �  �  �  W�  �  �  T�  T�  �5  P�  R�  R�  QYY0�  P�  QV�  �  &�  4�  V�  W�  �	  �  T�  �  PQT�  PQ�  �  '�  4�  V�  &�  T�  V�  &�  T�  �  V�  W�  �	  T�  �	  T�  �  '�  T�  �  V�  ;�   W�  �	  T�  �	  T�!  �  ;�"  �	  T�!  &�   (�	  T�#  �  W�  �	  T�  �"  �  �  '�  4�$  V�  �  &�  T�%  �&  �  T�%  �'  V�  &�  T�  V�  ;�(  �  �  )�)  �K  P�  T�*  PQQV�  &�  L�)  MT�+  W�  �	  �  T�+  V�  �(  �)  �  +�  �  ;�,  �  &�  T�%  �&  (�  �  ;�-  P�(  �,  Q�  T�*  PQ�  �  W�  �	  �  T�+  �  L�-  MT�+  �  W�  �  �  �.  �  T�+  �  L�-  MT�+  �  W�  �  �  �.  �/  T�0  �  L�-  MT�1  �  �  �  �   �  �  �  '�  T�%  �2  V�  W�  �	  �  T�3  �  T�  Y`             GDST@   @           �  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  eIDATx��y�eYu�{8��TSWu��z �`C5;ئ�C�[��(�L���1�mƲ�L�Qb��Qd`��շg]]]U�]��U�z������?�>���Bʟ��+]�w�s�^���Z�Zk?��=~ȿ��]?t��G�~��)��i���kh[��H�BPM]���{��<?�����4 4M��|�� ���m�fS��T--Ji�ih�A*�E�B�%xA��4�i(�9�`H�e!h�
��!�JSW%^P$	BI���l�ZS$s�ж��Jk���?~5 Gn{.AQd)������5�lJou�����H�c��
uU!���#�ϩ�
)%ASE���������)�)e���>UYD��)�?�BPWy2Gi��h�Gi���K�A����)�`H]�D��lJ]�(��WBR�9�d�����:�|F]U,]@@�ex~@:���yN���3ݹ�|<� y>ÍxA���qL�&H�ܮ(��!~Ѷ� �</�� L���5AS�9Z{(��z}�~?�R2��E���"Ki[CU!���ă! �`HU��	e��5�Lv�A��b���lJ6��=Ͼ����9 Í$�1��U��_aC�롴��?�ڶ%��{}�0�.K@�=f{�H)R��5~��>e�D1y2G�p� ���Ă�L�l�z�0A��f��CFTE�`����,��h��d:�m[��[��cZ�C �}����i��3�dN۶TEAu����(���o��}� T����'��r;���uU�[Y��R��+$�	B�L�/��0�3��q���yN��!�Ðt>C*E�4dn#�ٔ�pH���7H&c�^�,$E���6>h��CL� -Y2'0�b�� ����й� ��i�
/PZ�!gy��}�W==��]� ������i�0�����,�ʂ�ԝ4u͙G"��h���_�2�4��r�%�����(�A�����.�k��� �H&�i����o�'s�(b��BX�imY�[vxAH�D�>����:�,#����诬2������m���~�ѹ,�`tv�W��XB�>/A�A���y�]6���s�Bp�K^F40�|���ӝ��k$�	Y2#�n`��GE�]ڲL�+UY�TyB��>J{����3�fi��K��� �Ɛ�E�2Xߠ�����������3�xx��.��Ό� BB����N9�*���C����!Q�O:��z�BH�TaL:�RUYD���LSSf)y2G{�t�Rz���c0M�T���P�CA�H��@y��]V"�M�c�1�UEE�p� ������|�k������詑}��_�_�pˋ^��		AS�%��u�$��3LS�C�e�W�H�3Zc�+V#H�\9BiM۶xA�1��i��f�� h�
�ӝm¸O]�Q�T��?`�p��PAɒ�K8� g�v���{(ǚ����-_��&i�!��+L�l���`�攷B]�����Koe��U�<������V�y���zh�`m���A}?�x�ɗFﶋ�΀�]�+�{�c���U<�~�W?G�G<���Ꮡ'	�1LwvP�G�g�GU��N���ܲ�,)�Ԫ�,�4h�'�H�����v�p��d� `!�f�;i�ʁ�)�˒G��k|��w3zzdi[:#�>��3\:�����eP��ݦ��&����\<�$���{}�(F�>RJ�<c����E���u�<M譬��aDGԥen]@K�e�adm����� !%^�3�!������'�ѩ����}'�Q�v�u�x,�@g|����Y-�?:5⏿�f�,C*EUX-0۹��� �:@@e��"%N�lc����I&Vv�G��֍øg��Ô B�%	�	��o��ۥ3+��q�w�s���o/ܥt��gA��@pl�Y�b�l�fS�(F�WU���VB�4u�ʁ���)�˒��)�º��.=W�(O��>y�\� �v����:�輋��-�K�z����;��^w������}�u�u JH�����f���S��_YEk��x��L�lS�%B
f�;d�BJ�0d��C���j>�4�tQz �`�����O�v�}��ؕ[h�π.�,]`�'kt�2�u�վ��U����uU�!Aa�a��M�듧	�mٻ�E�R���E���5��5Xm3�i�iN�Ve���}_,9uEP��6�u�w)/w�T���pu�g�5��;��	�~��]+�ZZ�"'�b�  p?�dNU��9a���}����R�R�����FU�YF�0�۵KO-��)��s\ˀ��m|	���-��Kq���wѽ3��{�5���>K��؁����a]�45uU1����S�����yLw����<'�� D{>����#�$ў�`T]� �����H��S�	�+ۼ�}/�5�t�_�L��[��a�)�} u������]'9��#��a۶�m�twgё����ףHSLӠ<M��Y;x��i(���PZSa/2�P��(ljU�׮ȫ �~��8Ƚ�yh��� �^w)�{t١{_;���E̐������/�E:��Lwwhꚦ��w�q ���EN6�YC=�ik��0��a����z!��"	��x���<�"'�c��d<^,}@Ed�9M]1�8��[n�4�Pru��X!XR�3l0���8�b�c���)�\�ma�oPd)�`������j�����4�QR*<?@i�<�a��ew�����i�%s���5��lA1�Φ�ò��4�fкT׉���Q]����T���ހ����e���uY�L�x~��xA�d�2�� ە�cjGs�X &�Bim�|%IgSLc뇰׿ )բ�n�
?����+������ם
�;�,���ǒ.V �q=����	{}�ֶ�*��W�aHSUTEA]�(ϣ�3[�	B`���}G �Rњ�d:q�k B0������<�������=���Lظ�(���v�s�v��8P�������r��������ȶ���d2FHE�g��i�a>�C)MUH���Ε��,#���Q�e�َӵ 4M�p���]�$���-��w�g��Z�g��v�N�ղ�I]ЛX�ٵ�{��Gn.Y2G -��x���VZ�L�xAHUd`ZL��[Y�E��CےLƤ�	Jk�dN�$������#���?9s�4�7�\�^�>BJf�;�w�y�o>���w���h����v;���[�*l��Ð#�=��g�i����֤�)��5+?m��HeŌi�E6��ȓ������6cWWo_"�b*d����_8j�.��!��h�������Fbߖ����!����~>�r���v�;vt@`��t:��-E�Z��B���g����,�#�\���n��Aܣ��c�}�!�dlm�{6p�!J{H�Ȓ��14�Q�AہC�8=�� O�iX9r���=����e��bC�����Y����sMKM�g�yA�.M��QlGci������?����v�9@�H�~���%s���B�,e��cU��)e}R�.��CU�aH2Sv]�  �Ȭ*
V��ӏ=��x��ѩ��] ��}�7�g��M(��z}��6+�����#Ԃ0�7��f�� +��f3��
�|�`u��(������b��=�R�oT�;ah�ye�?;\��/Li����m[z�!�t�$�n�U�%���x��㗨[�%�����?�n~�'�������<[Lo�dn�Rdi��k�����5�Bk���.p�/vV{>uY�=K��d��pu1�ō�p�� ��^�P������c@S��á��e����o,r�Қ�x��<?�;|�Hklh���L/<|âI&k�Tea[܃�����1����Y�ZY!y�PUY�!BH�"����tg���ОO:�DUiX9pS�Tei�¦Yܯ��y�	ڶ���5y��<[\��)��y� �mGUU��� 4��K��Ha�g+��.RI�ۗ���ع��������~�e��9��U����*r�0�45B*�锶m�ݠ��;W���:��������ɺ�-� ୿�x��_���;�oN?h5�`u��C�QZ�H��"�0��	���'�tt�%�mX��$��B�*׶��<?��X9x��d�`}�������O�C*�v�D{v*4X�p�C���eqն(�l=p- ���A�x��΍8��C<�����o�M]��)yj�5�0���.�
� j��(�\٦�������p!%J{V��R�v�m��L�6fd)M]ف*�L����������z�$E���I��MUDen�9��iUњ29|����|��b��(����G���S�t3��.&/վ�'�/�e��v{%U�S�M�[�,��l�8o`�Ǝ�;�͓9��u|��my��ym~����j�+?����'��C�T�`��[��Ģ�bg�0�*J>pחA�q����߹�+x��i���c|�[������ �d�}�Ǿ�<�_,���-`��S�#6�KC�4�AH<�!��'sf�;�_��|��|���vM��~���������L�������G���)�����,�cꚽK[��{WI��x�$v�;m���}_������1u�g��;�R��7�n�������^��� ��v�߆��o� W�7���6�����������,nl0���C�R�����:�[��J��ٙ$�.?�k=ŗ��9x�MLv�iۖ����]�.��i���'_ ���,K��a ,�����9�j�}�?����}��R���;��i��WH)ɳ�0G]۩��Vn�;!)󜧾��d��$�OS�����iQR7�����
�����؞3�
�y���vH�����K����GW3�3�>A�l�@���w��H��LޭK#����ύ�T�u��S����߾�w�����x�lʥsg�ʂc��N�<��TE������ ���|�W\�
Ir	Ӷ(!Ȋ����C�8��2�m��$��Q�_�34u��<D��!�|����m���2�#��P�����������l���xOBm@K�jظ������>?�#�S�/=ql��cж|�w������E*�����}����������'�����.?M�kʪ!/k�q@mƴƴ�Z��$\��?��$7���p���(��?���tK|� ��+�t��+c���%j�gwݓ�#&-H�	"�X1�a�������nQ7�_�ذ�<q�	^��|�2eY7�x#��</��K_���$/*|��nBߣ�j���ӊa�3M�M��G��_��"Mx׽?{uUj������	�����e@Z[t^e�ё����
���F	ˤ@Cc�y�	�f�J�pn���u�]���EgΜ�ӗ>�ǟ���zl_+q��$�Ӓ(��˚�jX�̳��V�yY�4���]^�����d�ݜ�����]���r�V੥����2���j�qu�Vru�8ڷ�}��(\�i�u_�q=���;hۖ�i�S<D����n斣{i^�{
_kLkȋ�%�i�ˈ��QR�ȓ[����+��������opuL*��P��+g�'���4 ��8η/&����ݏp�s�噷�O.lP��c�G/B���v7�fO�Ȥe��x�1��f^ZIkݡEII^֬�B�i�@Џ}��y�����Ε��+.�q =��~����R[ ����� �e�S4o��C�Yہg����d��a��gz���5e���4M��oz}On��)��v�Ii�����ng䪲�S����P�ȀƲ�����J��)���@UU�a�=7.��K����g�������8��?��ŗMk�+���"�`�G��h?.�4���4u�5Rkz�!�� ���o\�Mq��/�hϵ���Xvx��T�������@ԆE���R~_H쵷��S�?~Q������7�;'���;�1���{y�g��<�9z�(���@���Ɍ�7��q�J\)	�MU"�&�Nl�#��.�`��*Q�[����*uY�Χ(���|�o;���6�ji�-�e�E�)�m\�����{�=A��Ȳ�N��eɱcǸ�v�����$�.]��<ʲDJ����9j�����K^�1���E��?x�t2���֘�!k)$uY,���uEu!Y2'�zD��m���}Կ��ѭ]]�- JX��(=�s�aN�����=���X ��1� �`kk���I�p�i����m�CEL&�~�3��smkl�Ԛ�'� #�t�};O�|!u�i�ﻓ`mk�G p���n�ٝ�h�ńس�������f�5|���=�M���&M�PU��5��'� ��`s^]�y�D�֚�,1�P�%[/����B�S�ӚZ���i��`�Ծ�s���:���-g�p��i�!=ڦB(��������i�[Ò�F�=��]���ZK��ێ�u]۸TDQDQ�c�UUQ��� G�\�x�5�k�z�gOT4�]��`S`��"�SZS#��mJ�ص 3ں�@�9�o-x�AM^#��;lP\�.|�y���C�1<�X�Q�^��Y	+�R{��*P�Y�ܹs�t�Mx�G�4�nu]�!O?���E?�ҥKh����$I(��4M)���ih�mhk!5&�b{k�AI[%H����h�+�M���55�wT`��{�
�R��_q���M�y����8��{���>=�3�0���j�
/ϹIσ;y���z
��RJIY��u͕+W8{�,����MӠ�&CʲD)�֚�i��zT���æ/��# ��)$M��h���b2��Ӛ�^Ax6]�:C�}G}����1.\���e���7��<�ɻy�?N����'�H��-+������郋��x���6���8m�e�J>L�ÕS��h����9� Xt`<�#MS>�S�y�7%z�82XE(E��@k� �SgH/�c�)B���\4BiL>E(mA25��Gي� Par��%n}����Rrۛ>I��<�_�³�6{uA�S������hh]��}+�a3�u  �i�R���?�������&����p��z�!P�a��d{��:E����X�����T������EEQEAv0�ֲ����z�ºLu��>��z��8př'a���-�:��)[�?��`�1�Ɲ�B�1eYRUZk.^����Q��͊��@(ʦ�1 +�T�N��.�/�Ĕs���a�=d����)Ο�Z���Z/�B ���<|�'I�0$�2|�g2�p����ix�o��B��qcV��ܭ-����U��p��i<��رch�)��tB��k���ٳ|,�ZȜ�h�eg������5K�`ŵ�҅޳�~��,�|�2�^��yEQ,bP��Χ�4v��ʲ�9o�8�g�´����[��i}����n�s ���h�[[�,��`�37�pJ).^�Hl�`D�����.ՙ��okp� ҂�V6R����V�r�<�N���~)7�pmے�)��y��E���`ʲ�*Ņa���G��{�[�4�XƇN)�}v�E-�֗,[a�57��������O����b����%޴��K���l�&F��#(a�
.���6 �n��e�B��w��ޱb��{�e�
l=�X6w:Y�����ĉ�}z�F�t���>���+�?�/tŻ�כ�)    IEND�B`�     [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
shader_type canvas_item;

const vec4 black = vec4(0, 0, 0, 1);
const vec4 white = vec4(1, 1, 1, 1);

// Random number generator.
float rand(vec2 coords) {
	return fract(sin(dot(coords, vec2(12.9898,78.233))) * 43758.5453);
}

void fragment() {
	// Get the color of this pixel and its neighbours.
	vec4 here = texture(TEXTURE, UV);
	vec4 up = texture(TEXTURE, UV + vec2(0, -1) * TEXTURE_PIXEL_SIZE);
	vec4 down = texture(TEXTURE, UV + vec2(0, +1) * TEXTURE_PIXEL_SIZE);
	
	// Use the color of this pixel.
	COLOR = here;
	
	// Randomize the color a bit, to make it more interesting.
	vec2 coords = UV - mod(UV, TEXTURE_PIXEL_SIZE);
	COLOR = mix(COLOR, black, rand(coords) * 0.1);
	
	// If the materia below is different, make it a little darker.
	if (here != down)
		COLOR = mix(COLOR, black, 0.2);
	
	// Or else, if the material above is different, make it a litte lighter.
	else if (here != up)
		COLOR = mix(COLOR, white, 0.2);
}              shader_type canvas_item;
render_mode blend_disabled, unshaded;

const vec4 air   = vec4(  0,   0,   0,   0) / 255.;
const vec4 dirt  = vec4(156,  68,   0, 255) / 255.;
const vec4 stone = vec4(134, 134, 134, 255) / 255.;
const vec4 water = vec4( 32, 125, 253, 255) / 255.;
const vec4 sand  = vec4(207, 156, 110, 255) / 255.;
const vec4 wood  = vec4( 95,  20,   0, 255) / 255.;
const vec4 grass = vec4(  0,  95,   0, 255) / 255.;
const vec4 lava  = vec4(255,  78,   0, 255) / 255.;
const vec4 fire  = vec4(255,   0,   0, 255) / 255.;
const vec4 steam = vec4(136, 164, 201, 255) / 255.;

// Random number generator.
float rand(float time, vec2 coords) {
	return fract(sin(dot(coords - 0.1, vec2(12.9898,78.233)) + time) * 43758.5453);
}

// Compute the movement performed by the cell at the specified UV.
// Customize this function to alter material physics.
bool isMovingFrom(sampler2D tex, vec2 uv, vec2 pixelSize, float time, out vec2 uvNew) {
	// Calculate the UVs of the neigbours.
	vec2 uvUp        = uv + vec2( 0, -1) * pixelSize;
	vec2 uvDown      = uv + vec2( 0, +1) * pixelSize;
	vec2 uvLeft      = uv + vec2(-1,  0) * pixelSize;
	vec2 uvRight     = uv + vec2(+1,  0) * pixelSize;
	vec2 uvUpLeft    = uv + vec2(-1, -1) * pixelSize;
	vec2 uvUpRight   = uv + vec2(+1, -1) * pixelSize;
	vec2 uvDownLeft  = uv + vec2(-1, +1) * pixelSize;
	vec2 uvDownRight = uv + vec2(+1, +1) * pixelSize;
	
	// Get the color of this pixel and its neighbours.
	vec4 here      = texture(tex, uv         );
	vec4 up        = texture(tex, uvUp       );
	vec4 down      = texture(tex, uvDown     );
	vec4 left      = texture(tex, uvLeft     );
	vec4 right     = texture(tex, uvRight    );
	vec4 upLeft    = texture(tex, uvUpLeft   );
	vec4 upRight   = texture(tex, uvUpRight  );
	vec4 downLeft  = texture(tex, uvDownLeft );
	vec4 downRight = texture(tex, uvDownRight);
	
	// powders
	if (here == sand) {
		if (down == air) {
			uvNew = uvDown;
			return true;
		}

		// move randomly either left or right
		bool moveRight = rand(time, uv) > 0.5;

		if ((moveRight ? downRight : downLeft) == air) {
			uvNew = moveRight ? uvDownRight : uvDownLeft;
			return true;
		}
	}
	
	// liquids
	else if (here == water || here == lava) {
		if (down == air) {
			uvNew = uvDown;
			return true;
		}

		// move randomly either left or right
		bool moveRight = rand(time, uv) > 0.5;

		if ((moveRight ? downRight : downLeft) == air) {
			uvNew = moveRight ? uvDownRight : uvDownLeft;
			return true;
		}

		if ((moveRight ? right : left) == air) {
			uvNew = moveRight ? uvRight : uvLeft;
			return true;
		}
	}
	
	// gases
	if (here == fire || here == steam) {
		// move randomly
		ivec2 rand = ivec2(
			rand(time     , uv) > 0.5 ? +1 : -1,
			rand(time + 3., uv) > 0.5 ? +1 : -1
		);
		
		vec2 uvNeighbor = uv + vec2(rand) * pixelSize;
		
		if (texture(tex, uvNeighbor) == air) {
			uvNew = uvNeighbor;
			return true;
		}
	}

	return false;
}

// Check if any of the neighbors of the cell at the specified UV wants to occupy the cell.
// Modify this function to customize the radius of interaction between cells.
bool isMovingTo(sampler2D tex, vec2 uv, vec2 pixelSize, float time, out vec2 uvSource) {
	vec4 here = texture(tex, uv);
	
	if (here == air) {
		ivec2 rand = ivec2(
			rand(time + 1., uv) > 0.5 ? +1 : -1,
			rand(time + 2., uv) > 0.5 ? +1 : -1
		);

		// Check if any of the neighbors is moving to occupy this cell...
		for (int y = -1; y <= +1; y++) {
			for (int x = -1; x <= +1; x++) {
				if (ivec2(x, y) == ivec2(0, 0))
					continue;

				vec2 uvNeighbor = uv + vec2(ivec2(x, y) * rand) * pixelSize;

				vec2 uvNew;
				if (isMovingFrom(tex, uvNeighbor, pixelSize, time, uvNew) && uvNew == uv) {
					// Neighbor moved to this cell.
					uvSource = uvNeighbor;
					return true;
				}
			}
		}
	}

	// No particle is interested to move to this cell.
	return false;
}

// Check if the particle in a cell is morphing into a different material.
// Modify the function to alter interactions between different materials.
bool isMorphing(sampler2D tex, vec2 uv, vec2 pixelSize, float time, out vec4 material) {
	// Get the color of this pixel and its neighbours.
	vec4 here      = texture(tex, uv         );
	vec4 up        = texture(tex, uv + vec2( 0, -1) * pixelSize);
	vec4 down      = texture(tex, uv + vec2( 0, +1) * pixelSize);
	vec4 left      = texture(tex, uv + vec2(-1,  0) * pixelSize);
	vec4 right     = texture(tex, uv + vec2(+1,  0) * pixelSize);
	vec4 upLeft    = texture(tex, uv + vec2(-1, -1) * pixelSize);
	vec4 upRight   = texture(tex, uv + vec2(+1, -1) * pixelSize);
	vec4 downLeft  = texture(tex, uv + vec2(-1, +1) * pixelSize);
	vec4 downRight = texture(tex, uv + vec2(+1, +1) * pixelSize);
	
	if (here == water) {
		// Water in contact with lava turns into steam.
		if (up == lava || down == lava || left == lava || right == lava) {
			material = steam;
			return true;
		}
		
		// Water in continuous contact with hot steam slowly turns into steam.
		if (up == steam || down == steam || left == steam || right == steam) {
			if (rand(time, uv) < 0.01) {
				material = steam;
				return true;
			}
		}
		
		// Water may be absorbed from grass.
		if (up == grass || down == grass || left == grass || right == grass)
		{
			if (rand(time, uv) < 0.01) {
				material = grass;
				return true;
			}
		}
	}
	else if (here == steam) {
		// Steam in continuous contact with cold air slowly turns back into water.
		if (up == air && down == air && left == air && right == air) {
			if (rand(time, uv) < 0.005) {
				material = water;
				return true;
			}
		}
	}
	else if (here == lava) {
		// Lava solidifies in water.
		if (up == water || down == water || left == water || right == water) {
			material = stone;
			return true;
		}
		
		// Lava in contact with cold stone, slowly solidifies.
		if (up == stone || down == stone || left == stone || right == stone) {
			if (rand(time, uv) < 0.01) {
				material = stone;
				return true;
			}
		}
	}
	else if (here == wood || here == grass) {
		// Flammable materials in contact with fire or lava may catch fire.
		if (
			up == lava || down == lava || left == lava || right == lava ||
			up == fire || down == fire || left == fire || right == fire
		) {
			float flammability = here == grass ? 0.5 : 0.1;
			
			if (rand(time, uv) < flammability) {
				material = fire;
				return true;
			}
		}
	}
	else if (here == stone || here == dirt) {
		// Stone and dirt in contact with lava slowly melt.
		if (up == lava || down == lava || left == lava || right == lava) {
			if (rand(time, uv) < 0.001) {
				material = lava;
				return true;
			}
		}
	}
	else if (here == fire) {
		// Fire self-extinguishes after a while.
		if (rand(time, uv) < 0.01) {
			material = air;
			return true;
		}
	}
	
	return false;
}

void fragment() {
	vec4 newMaterial;
	if (isMorphing(TEXTURE, UV, TEXTURE_PIXEL_SIZE, TIME, newMaterial)) {
		// The particle in this cell morphed into a different material.
		COLOR = newMaterial;
	}
	else {
		vec2 uvNew;
		if (isMovingFrom(TEXTURE, UV, TEXTURE_PIXEL_SIZE, TIME, uvNew)) {
			// The occupant of this cell is trying to move to another cell...
			vec2 uvSource;
			if (isMorphing(TEXTURE, uvNew, TEXTURE_PIXEL_SIZE, TIME, newMaterial)) {
				// Failed to move because the destination morphed.
				COLOR = texture(TEXTURE, UV);
			}
			else if (isMovingTo(TEXTURE, uvNew, TEXTURE_PIXEL_SIZE, TIME, uvSource) && uvSource == UV) {
				// The occupant moved to another cell, clear this cell.
				COLOR = air;
			}
			else {
				// The occupant failed to move because another particle moved in first.
				COLOR = texture(TEXTURE, UV);
			}
		}
		else {
			vec2 uvSource;
			if (isMovingTo(TEXTURE, UV, TEXTURE_PIXEL_SIZE, TIME, uvSource)) {
				if (isMorphing(TEXTURE, uvSource, TEXTURE_PIXEL_SIZE, TIME, newMaterial)) {
					// A particle wanted to move into this cell, but couldn't do it because it morphed.
					COLOR = texture(TEXTURE, UV);
				}
				else {
					// A particle moved into this cell.
					COLOR = texture(TEXTURE, uvSource);
				}
			}
			else {
				// No change to the particle in this cell.
				COLOR = texture(TEXTURE, UV);
			}
		}
	}
	
	if ((UV / TEXTURE_PIXEL_SIZE).y == 1.)
		COLOR = dirt;
}    GDST   X            у  PNG �PNG

   IHDR     X   ��#   sRGB ���    IDATx���=�e���yF*�~� 䶩2�I�)�A���� ���#h
B��A<��ӆd���@!P�dn�;b_^~s-r�����R��Onnrq��s��    ��      `o/��>     ��              �      p       �              �      p       �              �      p       �              �      p       �              �      p       �              �      p       �              �      p       �              �      p       �              �      p       �              �      p       ���    �<�ϗ�� �<�w���A             ��   �%�n�٘��Ց     �    �$F�a�+"    �%�~��(�      @      �    �Y�<kҰ1�_���U      �       8     �F�5,�<be      8     ,�� 1�;!      �    �<�]��!VG      �    �r���(g�      @     K`�5f��a    �$ҳ���      �     �Ұ1��     �e���+�            ������(o�	      @     Kc�6$Q��3      �     ����f��r���            �%� I���      8     ,�, H`��       ��9�^~�_   `I�������u(X�����z�����^�      �     �<Fm!�r��      �     �^7B9�i      p     ؂?��]���?ND      �    �6�@	F�q*      �     ��h.jP^p    �� pGy��      p     ��"���p:    8A��q�    ���H�|�D    �-:y�\�T    p����}>#      �    `k�"��X���            ��1��(     �i g�>�    ������E     G ��l��     �/�����0      �     ��h�Y���W    p4���	�      �     p���i     G`u�? �     ����޸��[    p,����    �� �Z�_@9    8Zh��N�B��� �     �G�q�G �     �X`5���     "��}�     ~�(�o@    �Sl#�hG     � `��C     ��Ӏ��@?    @ A ;��2     t2m� m     	,
8��r     ���ud     2X`<���     �|����     
����t     :����     *�����     �ȣ��#     4  ��?0    �A�~t��q     ����E     �D��`<    � � ���s     �ȣ��C     D ��?0    @A�����     ���?`    @	A :��%     E'���     �������9����   P�|>_B�?~��F��X`��?0�    � �N�.� t��     �����    `�Д��0�X�    `���`�X
k     3��Y��|��     &[�gI���    �����,�5     KbA ��R	t��%     �I��ME��,�     `��@ `;     �FO ��    `����# ��޻�/�(s   �$t��c � �οs    :� �P0 �����B  �    PSx<�J?'sT �y�v��P��A    W��4+ � �"     l�މg����      ��    l�v
���d �# �yX   @D���}�+ ���   �&���P��� ��� b�P�    @�\���.�- � �@    �hv�	 �# ��    4Iu�5:��` �5    ���'# � B    ���η�cЅ  � �#   pc5���q(F  �    Ȋu�-u�W8F A 0   ��P��r�z��@  �R�;�   �`�v�W=n�P/��>   �d�E�V��� ;! ��    ��e}�� 6� (+ 8G   cǅ�v<'`3L    Fڵ�;~� v �5�   ڵ�! �� �h��3   l�y�/� �     �N��ΏL `. ���  ��;�� �- `k   �͜��� �   [  �M����  `    @��� �     ���# �E     B�?�  0    @ ��r�9 @^�B~�   X��z�� �~   ,��;� �X    �Ft�� �!  Y�� �C���C �  �Hu�	"   ����# �#     T��  ��     Ёο,�'��  d��  ��F�Y��_W�   �O�����E
  ̡:��G     �`��x� �#     T��?��E     H`��\� �! �v���� ���ٴ���!     0��� d     <t��! �#     d����� �! �v?8*`  ����E�v Ў  �f�L����!     D0�o�hC     p����� @= hC�?  ���=p�4    8?��.~�C  ��]   &���P�     �ż�=� P�     �D'qo�_�- ��޽��  v���ڸ@�;���O������@Y  �H����z! ��a     *    �h���	�    �QX�,�o�+ ��i      �  ���   �X ��}% ��     �@'�l���og  `���~��a�����xG�x�  �3�(�NS�9�M ��� �kL ��i���޽�F���	�s�� ��޽0�4�9���s
  �2  `'�b ����g����   �R�Ш�̎8;   �  �:��<����, d0�&�;� �Y�X 'Y��[��l�to�P.p*  `	h C')���  l�3��P�@i�g�� �:E�Zxf����p: HcUo -   ��� ��S;��4  #�����x��?NE ^���b��N�N? SйC�NB  �1��U�����   `  �@��5��AX�%X�"   ���  �    ��? L��?j��      �  NǊ���! 0������4 N�Jg��    t# �u   �߆�vG  k!     M �����  �E��?z�k 8	 |F �62x   �" ��h����p��CY 8 ��    4! �u���
(� 0���D N@ �d��˗?+X�8�    0� ��V�L�z�8A�0�a B��� �;  ��     !    ��1�I�'� ��H�   �� 8�ʝ��;R�  �1�;!      �  �&�V�Z9	�9�׆�vE �4����  �F�cc�vA �D4�X@]  0Էι�F#��[��M���޽�|hE�64=�w��c7�:���?�}�CI瑆�]�v��{{�3` �3�����A'��ۚ�
^	h�ٱr���   �_����q��˗?�g���9��P��X�@9�n�2 j�3���    `� ����O�˿=^���0�  6��X�: Xݰ ���w.�!@0 �N~p��  `�o�s��wO�\��>Jv��� ��  1��b$~;�P���.>;�����    P�d �D(HpdP���~��V�7S\��9�9 ��+,a ��[�>��_� V�
��d.��     &�f�h��ǟ����X�ǔ;� 
�   �z�{����vx�4�YtPj�����?vjh����y�S�e��v<���\ ���I��,�El�e� ���{�_j��5M`��t �u�������u1  �� ~G�tT��/�3�o� f��?'�w  �h����׌��|g��rk5FO�$��uOc�g�2:���������ރĳ  �vM�5f�<bq�� �ί�>�:���s���Ŧ���]���/�Veyy�o����?�x d�����Ċ^M�Zh/gF��f�K�@���ũ������ �MP�  ����gQ������:4Zl�K �Z�:@2 ���_X�p�xV  Hh�ZD�  `Z0 �;��� - ��IP��P���k�Lh�n�������_$��  `�;������)/�Y��-�+��KWp�ï�h�!L糎�}��+e[J��{5 ���3   hy)�к@�/��p��{~�0�#�,zx}�>=���ʂs����\s��>  �ҒS B�t?���߱�['=U�
|���{K:z�4���7[2��ec����כ�?    c� 4G���+3�OI��k�2h�E������w�{5���fw�   `�hm��g%�~����x�^    ��&�w$<�A������OkT~�>b����s�r�&�c!3   �� ��J�|�t�?��kq�V�$�2�
��u��0b�   ,%; ԩ��D��N��V�j �j1��-t�    �+ ȥ��h��K����&@���o    ʒ�\�["��އ�[/�ňoFBpz A    @�7� ��-��������?��\˶-��cAC�    Xě @M�X�]�ɗ2kz��/܃6���D��ͽ��  �޾uN�C��ԟ�d���Q�����3$3ZD�Ωw(Ye    ���9���o����d�:�%����~&%������~u�?
��� �v���� �����s�g   ��w/2 J:�w����� R)���ݏ%t����\��TR�   �&4�(�o{�^��ѹ.��cY:ǽDo��4��;�P �����
�^��T�    �4��������~��}��5 r�`�}J-��~?h�;Ι�,p!(P&t��u ,��  p��6{����_�Zo��������~I��IBZ���:����}Q�8��v����t���:  n"���V�qo��{�{y>_�%�Yį滭ڒ�sn���m���%u>�{�{l_Ltj[���_�S�s�>��S  �4���JG_ۇ��5 Rz:�#���pj*A��2F�%u��֛A᧞����M   ��D���j�{�2 Z�;���}�d����c۔ؖ��ܯ7He ���������n�)�M�����O����r�yy�!;  �Ў���W��d ���߷Ӳ��y�3;�w��%�±���;��?��X��������ǫ�N	eK,��Z➌�X?��}?��tx���e  ���o��V#7ț;�/ ���%�kY�@"u�g-m5k��46ӗu��-zz���~�����  �Y?���#��~Nu@�Jw�k~�0��k�o'�$�aT4ɿ��c��ɝA����fe�S�3��\�%v��^�-�d� `��t�ѿ�S�&~�3�����;����u�[F�K2F�>�,h8ˬL��M�T�A"�B&��ڟWqΙ���8��9�h�MQ3TW �Ҍ����%k�����>|�� �b;j] dD6A�����������5�Y�|�p�4�������|q��P#��|�<��miu����{���?L#���~u ��	 �ڠ�Sӗ��ڵ��O�=���x�+ =+��A�_��nHuδ~9 )��S�!�3 ,BJ��Sn���w��Pz��^/k�k.��C�"�r�w�|9��:.���7�c�s܍��Oo����mX�K�j]�>���������U�N�hl�\[nv锃пI�������	����������e銠V�*�ຮb/��^�su-׹x�^�~�Q�\���ӯ_�j47�q����۲��4%)����m<��\��s�g{��{��`� r����_�ݦO2s!8�
����f9sBZ,cV�T�8)�a�s�P��q\���+���|�������ݝ�g�ï�e�~&~��/%�{M�y�1}� _K�<��le�q�q�<W��4��`�
,�l�}�����Y�pJ�t~��=;�t�s�q.?޲2߿���L��y�O�B��O�tF,���4���ok��P ��eG�C����j�Ϝ�w��3�5 � z;M�����f��7�̂�kP;�@s���ƶ�Z�c�Q�Y65;K��0�d�r5��&B]���Hw�gC�Y����
>W�愖���ͮ�f�rΥe�� ������[ٓڷ��{6�@m'xw�΢T�͘��oZ���
$�4�K�'u�J�=:�R�~�Z껒}�#F/,9���F�S5�����J�К���-H*]sb��)M�
 �V0���?hiw�8��ɱJ��R��ݿ�0��/9���$ a�����|��k]01��^ɾiT~Vs�cnϵQO�2�����&E�EMt}���1k�j�L�xk��i�$Y�<(F�������� �P8�?�e��g[޿��ځ���B�%�� �/�6~���G��[H]s_~ڗ��U�p��
Y��֘�f���%�A+X��Yۍ��k��V��.=���a~�a�R@� �����ڙ�qm�)����j	r���_�	^Q�����p�9��墦�{}��Z�|���Bߺ��{2c�4��j��,Y1A�e�j�k��4VX��vM�oyVW�V���/_�"� �e���5m���C�;E��R���1 hI��A�y�:�#ҕ�G�%�uFY���۩9��:25����V�]�9N+��*���B����>�>�p�rV�h��
8 l�e]�A��Q�ھ�V�����{�g Ss�gZ;_5��z#Z�K���ȗ|j_���%��� H}�v�QK9mO�<�
Ƭ��ԲrP5�2��)��F�)��h��D���:.�X��(�	 �e����ވi�%k�Դ�VǵuD��xj�)}��O�U�BL���T���������;�!�y�{>3�&ّ�I��QK�wў�&52����`L�h����e�/t������{G�fw�c�h�L�~'�_4 &J��kL��hK�ԇ���f]��vr��FWh��v��FF���;�X,�@��W��Rr\5�����)=��kY�Y1*A"cB�z�l#u�C�aD}5{�^�8fL?���黧����1Y8�Xf`l�G��פ�ξ>�֠�ʒ�h@  Г�/�m�O{��2W[���E C�}y�nod�A�ܥ�[��5��m�~�j��lW��\{����(�����Vr5��=Z��R_� R�T;M�g�@�8�3�F�#����������{��2]R��F���~K�AQ�}�x�X! -��R�����H�^���h�i=m�� 13G�GGM����@Cj_�υ�!E��}�Z�&T��:�����Ƥ�}�Z�*S�����i�8�(ǩ�^�k���V��$;�A����2�4��#W_J_o9�%�	]��\�f�.�N ��%:����kL;�}����j��� i�#2�߯�vL.����hvhr�\:�Y��=&	5J�h��hw��Kʟf@�6[�<S&ϲ�u��"�Q{Z��ڙ %����Lj4jzFj��йԼF	��%��w�>��bF�k2K���Kf � ���O�i�OS�г����T? %��� i-��\�^������    IDAT���#;r��Tc]*9����#�����~��\;Re�$��N:��To@s���EK�'թ5
��ؖH=���J�FE,�Ȩ�x^�`���߯�h���z�� � �(��|����w��|!Q=��� Z7t����U��ݗPڣF�"׹M�f9���kFwK�gi��d߹m��X^��wD��|I�H�~��:��<����՚�z�kRΝ�{>��X����T�� ��Y�o���iD��'k�u *������) ��O�X��t�(V-4
$Fs�ґ��{�����Y�JGm�hi�*��)�Wm�WOH�%��P��IQ��lh����{˻���|��D�b�}Z������`IM3��fj#T�Fg����+G ���om[��-e{֒h����s�T�F����ݒ:��	��a�Z�?#�f_���%7���߭STr��6]�*7���%)�������ė�s{moD�Ӭ?Z�Yl[5b������������;"%4M%G�L��c,���t�ӧ+VE����׾K��,�y<R����,#�ZHF�wh|X�K�lMGl�g�i��QO��Д	M��������<�#R�e�����[���If5ZZ�_��V�>V,K�i�ߑ�O��D�kiVQ���v|Zk��x����p!C �\eU) ��}U{Vꖚ:}�1 ��?UϜkR�%Ri:���R���(tm��ޱ���Z;������vJ$:��F+��c�r�b�97�$��hu�Z3zj뫕����P�ԟZ�W�s-�����5_���FSY7 f��/���h۔�y_:�?��;B�]�q��
 ���_iT�z�G�Ƕ�����H)=�\�"�є*�~���|��?��۞T���u����ֺuT����x{2_F�b�L�	��^C�Q��R�;���\����j��E@@Q�Z�g�t_�ovF�Ek4]"۳uߩ�i��� FEdNT�XB�~IBʨ���оgW�5A��m�l�o�i������|����!5Fױ��ږ��g��S�+���y��fw�b4�ߩ��z�WZ�s콜*R����IK���.;u@K���ņ�N��E��_��ݲ���%�!���~Vm�w����Fv��ָ_�#�%J;�%�������)��[�+�����r�wi%�:���
\�^"���HU�Q����u�\?�>cR#��e��|�q�|6w���n��I�=���sH�J�jI��c�X�U쿵��Q���=1��u�>=�_:���z����	t��;���+��ᜭ{s;>?�'1P��,�lG��$��$1 [J|
�� �� ��}�,@!������*g�ǖm���컕����C������
��_$�2�ׁ��l��%bud(1���ͪK���K��9O�#VZ��Hyi Gc߽��C��I���kVh���#����|ޏ���XA��?���V9�?�|�:�w����T�ߚeP�s�����a�R:�<r��j����A��;���\mCA��#� �V���0�xyh�>��U{-��Aν%G�kFUk�z�i��I�"���?����,羗z�g��J��q��P���2UJ��2/%W7���Ļ��즶�r,��`��Z��i�c�Rzr����bD@�{�	�̼ߥm��gz�˞w^�L�^G����z���� J4ԥ�+Un�/F��^��uI�=����BVɌ�S;zy}���{�9���m�|��m�ʀ���v�6j�j�3�����%�fh��u�}[-�У6�;�y-ٟ?���@�/��vZ���jF�Z��}H-����F���A��w�k<\z���%(۳��>Z�!��[ʳ� �7*G`�a�A��w�/j?s5b/C�A�|PRǪ��:i�x��+��{W{��lC��Kn7�)k����5Z8S�<5�ٙ����✞�����udk����G�<c�~�F�$��{g����]����H��I���ش�i�T��f;~U'�l��h)�����޻�WJ�>_3�o�_[�]ߑ��w�$��z��S J�ʤ+���s�Β�>Z��&��V��/�E�{Y�jֺ���ֈ����(5$�RQl�֑�Qm���F��j�ٺ���ȥu�ĵ�S�^�����I��Fu��F˾�ehT9/m_H�#r�^J;#�V�k�Vk9о.��+�Byx3����Y����T�m�K��j��[�}��;��$qN�����(�K+�����5Ȭ�:�(���5U'6�c�L���%�s��M�{VZ&Bu`�#ed�_����km�\�v�����/�TCB2`�H]���ϪG��t�!�qOCۮ�3P��]�ܔl'������[���Q�z�B#�5Y#+�Y{Yh~��鮣�_�+�״�f����r�6sۑ��I��� и9��i�d{�d,�P(�Z^�V�̒
Bc$�E�JF�4���;���h=�#�Z�_�A������/v�϶FG��;��Q��{ޱQ���.���w������r���� ����,t�g�����h�c��/�̌�
<KqK������a��ϻk��+"���Y-�U�R�s��W�Cn�G꘤F5S���]M3���,j6G���~N��*�LHόr���0�>�}J�Ƨ�K��֦?��������Ϙ��q�m����KK�~������n�z?��]5�>���%U~C��Ϻɕ��������x��G���`%=��ZQ*	Z�p�J��^��s����n��s�r�m�Hw��Ԏ��D�k�T���%����s�-Eָ~����H���K�)Rl�wK�������t�Ի�D�wk�z_���`Ek�K�b�@���X�������� )ݿ���R�{�j�Ԛi+��u�}�RZZ�OS �Z%R#v�j�����J%�cD��4Z��x�m�v��z�+���m�T����Q�Qi��eiH�G���E�Լ�[FBj����(��:e5J��^��v�5,����i9��t��4�~�����}G�_.�@Y�f�̪�S������GM�g��zz�/�).���������� @/�c-<���
 ��phĖs�y�J�1��z�f�X5�d�����5��\��T�N��r\VI�+��.�R�m����wH�:�fif�Im��N�H�T6A	�T.�,����{�-�$3�S:�Z�S�]ڒ-!�9��#D��Q���\��{7j��f)�/�� ���R�J^�=ZF�P��wr����ɲ�Y���L��N��q\��6�F$F6%hG�KI���t�sz27r����a��U�����;t�%����v�;#6�!]^k������0ڽ�!�v�����$H=K�#1 7J��i��cZ>;����Oj��]�j�݃����J�* Ь��[a�l�ja�xL�H6�4ˀ�m�Q����T����sN��Ƭ��Y#l3�e!(1���F�B��˵T�e�w�����1:X�UOk�sZ2I���J�U������G�q�����z�v���z�$IL*}.$��4����W Ч��4���V��V�F�kK��kVcm4�`���PL�%!��XgQB���i�J4*bۍ��F�S�Bc�d�gu��qi����m��+Ւ��wf�ﶪ	������SkB׮�F�$4�F�K�9ԉ��f��>*x��;ۋ�[L�_�wι��s�A�(UX��,1rqm�d��΀�B+��x�sι���2�XF)Y����R�,�n���k3bt<���,��vzS���D�%�?È�3=r���m�nS��]�~�� [)�Z��g����V[7I}�7�d;����g��j���Nl_m�X�-w�$��ǯiv;.eV];�	 L'�(�<�U ��z<�R�������{'�p��h�z�jt���6#X#�H�h�kw�53H�i��$;��m�v c���T�޲��,j�Z�/Q����:�mH-j���F(�j;��略#���^M�-�^���sߝ����g g��E�:�<W�ԙ�B����^N��K�������s�?���_��,�,wOJ�G�q���df�NJ���Q��~,�=e ��t����G♫�~Ͼ$�%��Z��#F�[�u�d@ 't��^s���o�ώtJ}�mUۡ/9�{��5�au , ���{����6�ܮ�~�,w���Nɿ�$��ҹ�iP���)�r5�R�	�ߓخ��Q+� ����x���U칐����H*�WӨ/�{��m���r�H�Hu�J����l?���vZ�Z�C��]���5ZK�Cj�ҝ�R��;յ� ���P�*#;[;j���w�S���mH��b�u�������V��/ǡ�ߑ�Ԓ90jdaG�ZI�e幓Ps�W;�Վ���L����wc���A���am;+{��j���ì����G�/�]:����2S �R�+F���0;h!�"�.��Զw�2pBL����՜�=#j�{��9���a�E��V��Z�į#bu�_�[�c�g"7��X��h��7���ﶌ�ƾS�� ���x[36�:�ZShr����,�~轧�mJ�G�m�ދ����
b��i�����K���h��IFp-��l���h��������ާ��eh���Ė�p���Z��U獸�-�c�Ln�_Lm���J2,���D[u?�\��y���n�=����Ѻ��t�����ݞ��X}�L�����kT���>��SJ�K�-�M��7sz=���� Z�^5�M��敍�
����M�}m����)T�z�e��N�v[Y/'��W��i��6RS#szGYs	?k�����xD�D3{�ھ���Ϯ.����#��yk��G�s�S�z��z1UO�v{G��ڝ��X�e�^�ڈ�����;ǒ�h��0��Y�j'D3 4#.�/`���+��v����(�=3������i���8���a��d�Ժ7���`+����@�5�X:��Ye˯w�*���@$ҢK��O��i���({�]���e�����3�]����Nk�Ҩ1����0h�o�s�=�r�w����9��|�͋�8;5�4^P=jG�Z��ޏ?��Z����u��f���H�(��qZ��E�{F�4F/f���#S�����{����2����|Zkg�h�ߴ�Ck9�]�z��r���<��Gk�ܫ��ٻ�^=m��r���ϝ�����g��	C�g���g�_���>|��\ʛ�n%�6SS��H��=еZ~�oE>�w~ y-���4c�b�ֆW���Ftv[�ɬ����� ���wɹJ��T����ֵ�/kYV����iI�K�It�K;ѵ���*qݫ��Y�N�%5
��O�~��FgԚ��K @�`g?T�$^ҖSvK��N�>�wν�hUӘ
�vz�|�;��ǡ5�՛]0������Ҫ�<b��kS�i�B�$d�l��6B,e�?.��z�-������T3����ȿ__j��X0dT���$Ż$�S�����Զ���~]�
�HO��<��Vh����Y��{I6�Z��#�l|���G����{3����{_��$��C'vvF�����ǔ��j��by�r,�HRA���ʤ���b�����Ou�gI�Og���2�J�ߢtD�e{�c�wp[�%r��U�.��}�erdFbM���>}�t��#>�$�Z+�����X躴�[��]y֔k�X���ǦuM�;w�^h4Fڌr3;H����^����^##@3Ha�ޖ�R��9��N-���w�{?�	�=��Ng��$�	�����Kz��c��G�}�V��P2����HU+A�O�=��7*�n���ef�N��zc�:J�hiL�'umC��]��@뱍H�-��r����:��̬g�����Ԁ���r\�:����m/��]��{�d���G�6K��-���m�z�(�8 ��v�Hk|��޹����l5V�)���HAM��~,��/�T��e~_l�#Y��߿�{oR�>��ÒQ2�u�s�{h��1��{^5��;�m;�r��Vɵ�������xΩR8Wv�4[�E	%S���� ���S���FxY�1�?Gi ��,�LG����ߪ%\�!��B�H��ů�$�A;���H9n��8QͻWs�C�>R��Z��S�Y�tp���~��N�/��Q2%���[���������:U���^πS�j�����I��o���=�Ȼ�X��JAQ����O�<�w�����y�K��Q�}_JR����5>V�M��˨���щ��s��p�v���{�(����]i�`e�E�����o#�U� S�����;�v��壷�?��J�m�ѿg=���.�5��5@q�wι��[~��+)i�k�����7�5�F�s���|��>#��+����ִ�uVo���K�Ĉ�Qk�X;"T{�j2�4FZ��϶�_j��$ʤ�i!-�qT�C���ܻY#n� �ϗ��l���WMٝU$��틚�ըi;՚�ki�I��������z=�� �Q�P�n�]"�!��H��ZM���:��{������gb�l%QO����г���g���~�X{��j��vX,�FJ��Q�Q����vJJ�ݝ�c4�`�zS�G{�ge��ض�8f�gU�Imo��9b0!��\�%�����\����Ld��Eq�/�{��q��o��J��3؃F���x����=��)c-���{O*���3�ٕ�_k��_h�޷����G�z?Ӳ��T�c�t���]���iy�g��_f��ܥ닒�����L��g�)I���(=ǣy�J�r-����n�f�Z#d��I�Bi?L%����.�T�P[�Gw�[�S� ���5s?GU�k܏�w���1�HI][+�X��`����_ʈc��g-e}������$�S�S�f�i$��.-�A�����jNk۲�ɟ�EXF6��F�,�뺦΍�X��l��y��$��_[��t($�[k��%q�v��y��p�5�Ό)N�h����+�
J��������p��w�6-�{sR����{̌����f J�]� X!m?����G�R
:�Hi��a䨿�>k�,��B�\Ѭ7W}�+��о{���KZ�#�ĵ4�Q��H���hNi��,.Ԑ�3��O���lM�c��"q��k)��.K�xg�����Թ{z، B�P}�cU�\��g�6 p�Sʠ�Ă�:+�=YbVʃ��Ok�ܽ}�}��T����Ӽ�S $��V*�V��Q~����JfQ�1�q}-W�w��2r���S�-hI�_�9�v\%���Y�	z�3�������L߯mmy�)U~���F�Z���C�� �����{|�W���~O0���{Z%��1,�o�-:"m^�T��&�e3�e�]��5�9�
���y��2 B�>Oh�IG�V8g�'PS![o|9��\idh$�k0��Ig��D�oĳ�㽵��$�̌���K�a�Z��*�U3��u1��uF��s��uZ�����w bsTC�Vk�}��+���\e��������se/M��B�r�����老�!���K��X���Zb�ɞN�?v�k������G-�6����{���ڲ�_��z�>���-�q3���~�OR�{�{y>eVh��w/��	 X��RF��IO��s `�T����j��Ny7ލ*���飥�%łk=#ƒ��J��rݵ��~r׮�F^��Fj�:��TKk=��s�R'j�٤����㡿��$�+8�!8�5 ��oݛ����躶=��:a��
r�S��Q#z������\�]o���-��=�S�}[�svւԼ�Q�\�6�5��@����Z�sO��ҙ>��� ,_` 6|���t�}���$������v���B�r�I�I�N��#q�7v���(Y
V��Q�J�������Z�)Y3�P7��	�xMK�`X<����ặ%�� X�bi��� �+�:��@������v1�B}1�Q6B�:K�v�������f�l�s��[�F8��N+�4�qh��;D+�g����d�xN�_�{�����ꊸh�CN��{w��},�����{i�w]K� ׸���*���2P����l�뽽��v]UM�B,�k�7�4K ��#��ӮE Wc!?Y 8]��j��_9.fVF֎�RJ��[}?���+�.��-J�!q=۾�*��Z��g[�CT��y�>�+�^�A�.�yX��E 5W�<�Ҧ�����^?Z���ngVg�*y%��f<5#ӱ���oj    IDAT�oOG��"g3�p�)���}Y��-�zwĞ!I�$�X��j oE� ��o��6��Ƞ���{&F���%�����7Pgu�{RjK�Ո����uJIzF�Mo�gj��q�P����U?��#H��%�vB�B�'��Իn����`�N7n�s�E���:i�<ޙ����>��2=��Rù���������}[3bt��JeS��{4Jl
��B��}�n���c#���z%�K��y �=�MR��έ� �=�w�T �)+/�����
��!~�(�oRǴJ
�&�g�gn-;?;u�j��X:���R����nt�fl�����J^M�]{��xV? �ܳeFg�̨�J�7�C�
]7���Xe�!U���4ݚŰ�Y�5M�i��}-�Iʩ���`�_Ǳ��������ܿ� A(�`�g��\zW ���JTmEM��J��� ��3b5*ޚf�\4�N�n�ﴄ��qj��L�:G����謕��R�>��P�,�D��Θ�r��`��~J,�qľ��p���#����zi�V%M-0�cD�R�@y�1�P����Gk��N��Z���ۗ|���ݭ�=>�s*٦��h�r��`�����ֲ�6-���t<g�s?+��b�xj���j��)�7�j����& �ra�9��"���S�Љ͙+�nN(����=�x��.���Z�Չ�����)eD��y�W�o5�K@<�60�B�y��vZ�g� +:�!�C���2/���mE��V��BǿƮ��#���X�f����[��bj���>c��k�o��F<k��c=�45 �}CV��=��0�WJhܔ�ڸq\��)����-��vΗ\9]G���t�KG�Ggi�^G�g��\W��5��ӑˠ�Z�bS��ESko�|���}R�0��L����G�s�4����^�F{m���:s�Yr�(��Z�#Wg�4{�ZBK�������u��q�k��G,�oΪ�_�����k~
����j�X~`��|��ns�h�̅�Vf��0b�_r��=@x��&IFKG�F��E�r�u<�Z�>���/-�;���"�%�9�^��u
�o��ML �(	��}R��[-�o���֪ǝ"�X�^p�w-��:�u��ߩee$w�4���32{.�d���N�qoZ��T�f�|�h��?|\  e�N-:��<���j
��QǕ!�َR�T���lJt�G���l +$:��Շ-���<�g:p�I��������]O�� ��Q�n�sV%R��I�z�&k�+{��=h�-K�Վ���q���fҌο��n��X��/q�z�l驄3�&�ؗ���� ���x��|�
P?�T��FPb�_��!׭��uʵ�j�ޚ�s8����w��,A�\5��F�C���5�:�XD���ӳ�r]D� X1�f'L l���!�{M��6cn�d�9�f����3�_������0�t���$�ʑ�H�}�	��V���)]�������SZ�>|��g ��e�G�ZF�� ���#�iMG�{�;�1�CY�m���:(5_���N��K���e���t����4�
e�Ils&� ��j�{�ҩw3�� �wzfΩ��aR�h�5��L��׌u�b��'>���(%qMF��ӂ9>����Z�SfX�g -�L�y9��Xuj�Nh.��F�J�vL��[�mi��^*���Ե�}l����S��������i_�@��RbS ��Ӹf�`}��z~�`Ǻ��%}~��]���I�:�5��X8,�Ҷ���c9I,��䬔�E7w.�'v�5��R�gZ���V��x<ޝ�	�u�,�3�V�q�V������,��l�~�5�/4�j�o��� 
���` hsb&@�(��b;�R��Wh���:��x/��!]K�y3��ʹ;�OA�r���JN�G3�;�����Ygͪ���@��T˖B�����`E;gH�o���6b��ѥ1rq�\ԋԢ���E�5]&�퓯��5)J��l�:�Ҳ��O���n�������� ������V���߹:���R�nD�Kc����$��w�|�,�.r��p"ʝm���c�5C꾏!S �*=�A�� ��h��klW������;彨Ar1�:'��g-�`Y���f/��x�:���ﴲ0�>$l���A����ӸN����r��k�ϫ������}����>�;�se�Y��kh�I���t+F/�u"}���:I��s�RH.(o��X�v�k ��[%9�t��ʰ�\ ��htZ���ȧh�74ދ������^�{�� �F�N��ZIՁtZ�r����%-Y����}~,����㡓��U8�Gc�ka���5��nu߬�g,f���k���b��m��Z-�L���H+YqD �滖����z+�SS4 0b5��ʹ偶�ʧFT�� ��b�xkf�Fݨ�_�E�[��<r?i6��8c����L����c��jeW+�z�(#���Ս��*��2��w�sF���1X����$u�����/���ȶ ��/���߿�����sJ�u��h�F��{���2��9�v�%JF�G^��.��zs�y͸��Z-��U�+ �*�܅Z���h�F[��p�{��Z}/���uv_�}���;�a͊k"���EZkMI}��8N���U�kvW�X�PLY����O�j�y"��C�..A �\�,�U븞:��n��P�4�'7%����d='	���֕>߳����BA�����_Xa��vz��j1 8W,��H�$�k�Z�uTz�N�1VHK]��n-��ګ�㓞�R�j~���o�R�n�s�=�WX��^d�u��QF�.7۹� � ������\��kXK������1?�t'#����Q����J�z�����|��V��,�ٹ��+KePkD]kDiWß@ p��������À;s�<-���J�D�z��,�ss���~���^M����@��l @�u�%_�<| P�����s�@ u�����1�a�k�a��-~ڪĪ�kX[���H3�[i��R�e�9[{^W$���R�+w�E�`��c���rX�s_�O�=�_���/|���M4j���;��8�y��`y�5�ťk�R�5�����
ϫu���J����������U�g��� p����������%bou��f� 4�f���;����cN�>1;^�l�Y{&N�hM�;=��˹}�,(-t�S]�j����7 4��UZ�[n$��:H���k$a��+��Km;׶��$����#����A �����?�z �y	�dBR)N��F���#���������oo���|����q��c�����<��5���9�BYh��p-�i��er���zl%� �t�oL
�' +��:�V:E+мV5�Д�K�4Iߣ�����k�ϸ'm�\��},W�`o��-\�XB381u��Y�/�@�������,  &��=��[��K��	��OhDg�q�*��h��%e����3���=�-���&T�W|�Y��3p��#�\� Z$��Li�xX�_���#~���oxKZ;�R�\;��t�E�$9�m���Hvz�[��N�
���>s����g'��L��4$`dD#�Hp�  �Ҳ.@
�yZ��Y�.�}�Ol(K���͉��׬�;Gǿ�	��Qjv�ǝvmF���) 3n�d��h�^d�$ ��J�H�,W��.�o=e_{�d	~��ұ���ٴ���q?�J1-\(=��5 ��*�R35 ;�uJ@ͨ��Ҏ����Y� IZm�D0fFݷ�������r�i׺(��0§���P ��j�ʑA����e��]?Oy�3Ri[f�2��(�������(7%$~���=k�꟬�z����Yu��G F�,8��>���*���q������0Fʹ#����бp���9;�a]��d����s�4�s,Xr���#�2[h��.��J��}M	 ��՚A��@  h�ް�]�:s�x�Uα�-�7��q+�YV��N�(�A ��5 F�N���S����~��,&�Ԯk�����-��{ֽ�^P�ݞmYJw�҉;YK�"�:�N�8���F>�Z�2 ����������g�ǿ�����?�6֙ `7�5B{��e�i��J�ּs�4tWˊm��V�Je���˦�CV*75Fg�Į����B @Hhn��1�A��k��� kf׽Z�U�����6jj>��F��~jRv��Y{n�rýkǵKӬ�B���~�O$�� �l� "��3���:�4���_�.L) p�r��?ڮ��>�ڄ}��Q��x�K[n��}�t�`���͟��S��$��$�1������\ ��K��z�J/�����g���k��As�d��q�>k�ůF����ZO��r1�/������^��*�V8ƻX+=:���k^ǥ� ��,U:W���s�z��\S� `٭�^(!�ޓ�u���K��[���nY����V��A��a������ς�yi�Gke#D��\1h�T `F�W�A[�pXE0 �õ�����ه2�DG���
��G�GOI���=_�' }�u,�Z�k=g�^�5�\W���۬I֜�=�\���XF��ꥻ�µ=V[�c� �h�/�� ��*G�A�< �=��_�$��_�ٍ��Ԏ�*�³d�ZԖ��4��B����L��,���h��P�Ƨ��!�蚿������+hq?Ϣ5 ����)���r�zǕ.�w8~��?��<�c�4�v����g����V�
�m�մkHw�F�m��siﱅʴ�s�����X߆�J�|���r:V���9�^�϶���+���Ӫ���%�yo�' �)}w����ߩ�}nO�Yځy_��s��\sSm���N��g�^�P�[�ϫ��X{��^+I�k��:��-u>�ǣ/ �o��@O�k�\ CVl� ��t�wm�H��ޝ���#�+���J6����$�u(���vI�p��ﭻ{�w���f `��j����*קe:���h�@ɇ���#~��XYiA�+ܿ�����ʹ i�����C	����$SW��kYk��?^�\+�z6kS�g,�6��z����G��Kշ�-�ּ��V:��l�� @�]��6xNZ���Vi0^�
��\�y�2w�Xls�F��ז�,�%q��{�uᶕ��~E���7`�Fj��=��A��Ai�`�	�{84 ��j���dTJ�����=#�f���C���G�����}��Yc�ƅsorh��,�
wi��H't���n�\[�q��4��B����������}�ҵB.�k Բ�B'��@�^������7�{:P8��Y��$���E)�~j)�=�����Ԧ�	���kY̫�X��*�F�ٽ�k� kI�*��мv���'ׅ�k��B �duK��RZ?;�P�DEO+�;�˿���G  )������:���J�����wVk�B�a�}�3��Y�ur��v��Y�q��X'w�c��Iu����sZ�·��1��y�x+�	�l�����x͹���Ϣ�Vz��tE�F}=�\�j�6W_�k5\k n��h����G<f�73��r=G��� �5
zN���R2'�7@�6��6[�i,�Ә��w�b�XgL�cˢ�q~`a�E�B�X�\�gƲ2�e�bV�z�-j˳��_j�c]�jek]�T� H�]�H���~��`!�&%�����5"(��FS�������F�<�	�u��ά䱯��'��v�Y���w�V���s5�m��]�Lc�~�b��~?���z=�x<�-�� ��TX������*�B�P�����Z
 �v�kW�O}g� ��Z��J]�����\ݩ��z�Zi�v�F�.V���}Lx��z*k �jM��=R�����y=f<��̐ڔ��O�Ŷ?;��o�n�rG?�jd�~�Musn����I���c���y�g]#�Y����1��佫�S#��F��{~�S���f�����{|���}	�������g�˿=��������`����mŶ����C֎+Ww\�S��u�WK���z�ꍽ��S�5ۛ�p��J���`-�^�-������e�:ѭ�Z�r:�v\Yc�F;4��:VkS>Fʕ'��{ڵ>����b�!�_Ѫن��+�[0�ӳ�F��$�(�}��n-����ۺҿ�
��1�Y��*����p�64b���#]��|t��2���g���su�ⳚN��z9��F�Q���쎝�;a�:�޳���ή/%��wYtq�"���X�����P�'8�ymc��484�e��s���^�����U��f=ϻ,H��}�Q/Y��F-�|rݸr_e���)=ϰ�5���Q�ڈ�t���\�PJ��5NU���[s\#"�"�=~F� ������EL{��ى[�!�uIu��Y��x}f[��[�5M]pE����r�Zp�ʵ�=?�/����x}���g�ҳc�X����K0�}���j�H�Fչ���x���ȼi�u�j�3Y��yt�}Ꮩ���V��������
]We�dV���.�����f���e���@���z�I��Aj�<��X|m�sp��v���L�-�F�w%��[ Bj.�� ��`��1Yh�����Y{~N�}�����;I;���ɀ��Y�%Ӣzڈt�1J��X�� h6bQ�\$��w�(	��U0��_�P��%Cb�k1[��N��
��W��;�>Y9��]����������rb�&�v�����32= �� ϭRZ҉�T)��a\%6�z����po��Y���=�������,-X�����H��wJ�Ab
�N(ٞ�J���Y>6������ޟ �}�ءòjŹs��T��-@����BA읃-�s�ArF>��^C`�؀r�s��.� �g��Xoi��ܞuxQ�Ƴ���i5o���IL�kA�+/4v���M���X�+R}��ɫ ��L���X�7��kٺ�Y�u�r�9N��~��R�g8���֨2�jY�lw�d��R�%�S�%��i�R�3�CIY�:�c2 rP��\y��S�c�U�kn�S�q��i�;���u���v�v�=+7�ZI�C�������ձ�(��Ft�c��;����Y�X��9����C�[�K, c��/ ��r����d��<�+���2V<w��A��=#�t�=Z~"Vr�\�U=��3 (d}zG!gO�2�|v
&a,���(�E=�I�v찦��E1��:������:�iP��7̍)��bK����ZQi���B�]ˎ���u\���i|����6
����[����z�G�wo&�T&D��GO>���:猬�b��J�j��+:��Z���h_{�k#H�w��)�(W�F��C?��"�������{��F.u.��@�z�ʤ�9��[f�<���#[����盇�Ċ�{�i���-��ׯ�\V�}��k��u���j�ۻ `������}�\}%�y�g��\c��,Ԗ��v��i�,��-��5Jo������vt=�R��;�����}���V�_�X-5��=*R�/�Q�Ԣ4V 5����Rg.j���6�����z�@��ܖ�!1b��aoY}Ǎd��PV53P-��=�� �/]���Jf�c]�?b�b�6"���0�H�H�;�8�.�������nf�p_�i��9z��Jצ���:���x�ݿo��9��N֌6��k������{i�\"�k�����|��
Q�S���]���@��Ƽ�c�f�<�R�:z���z�4�Ts�*��[�w���* в����.*��X�)��S�s7�S ,�19Ŏ�z�T�Pg��ϘY����x�����Y��0�y�X����Z.��]���g����U�����x|� ��q���v���|+{����C�s���RO\B#���f~7c'�܈�N�Ŏ�㤬����{rv|�/�w�N�z�u���W ,��9���v<�Vy�B�W9v)R+:��~][�Į�FƬ����}�W���ʡ��)��Ugj��AO�}���qm��J��Z��uUb�;y�{y>�(��YJ��[��ӈKD�Z�k�H�u~������ʳHF�w|�Cz�ӈF>�֦7X��-���M��sk!+����^3�(�R�G��Y ����s?�J���_X��h������(k��C����Q��z-�$�YN�    IDATG�m�y"5�,�Gʵ-+�bt���=g3�}Xu]���|�����ة13�j���\��E�K��6���u_2 `�Fhl�K�g^�Y��ˌ_�$GK5�?K��Z�Fk�+=��'��'��7;bD]T�9$aԨ�F�Z,������f�� �	�3��z=cծ��~�43^8�̿��DC�tͯj�E�y^e���l\���f#iu5��ܷ�{ٔ~��A����v�
�����XG�)+{�u?��I ���Q�Xc�r�"=W���I��KlǪ�uk9�]��2{N|M�l�����J��	��X��x��CR�w��u�nA��Υ�u_W��
�* 0�h,
QӸ�������I�2������غ`��pr�]���Y�/�\ym���ұ��5���u�B������"��6bqؓP�߲��U  q����<��Bz�dtd9���L(c�ޝ��1T;�e(�&8ʩ��Ј�F�h-Ku�t9=�|�|-�,���Xz}����t���zI��E�,^���H��-�gR���e�6��TR�g�e���|��=]�:���M��f+�,t>'-�.�s����qC%h�aԘ���}I=S(J��縳��!F�[��b�c�5-FK]�]���`i�=�a���&�u}�F��)��G���'�����-r� �_u��� ��{���i�9>�.�2-/�Ҳ0�e�K�,PF�N
 ��H�5r�T�6� �y���նEFFh���:��/���џ}��z<v� Xv�����>W�����Hyُ��c��6�K깱��gU���̟P$���e��ʪ���vO��SDK�GpW++�k�:�vN{,����9{�����f���sBE�Ju�4��k�:0�YSҋ�������G:W)߳���*6�7v���H�f�r]:�Y��v��:n�_PGn��*FOUY2����v?��X��Z�����Z�y��R�2�<��-t���(b��/�y葮o�3 ��qRY}3��*#�5Y%��y�Q��D@iԣ���ZF�(t~�s�{�B�Y�W;ޣS�z�f5zz���Y-�VI'>�����¨V�ܽ^�>])�?���8��e#f�k�>ꨑ�02sh�,%�b��6E�5��PZ����}~��_=���y�t.;�]Oh�圤*��7�#;�Jݟ�Q�]ʉ�ο�TI�d.2��4��� %0�]�﵏C$����]��Ċ���Jp��+��^��XDtv�s����F�+[�b��6�l����Y��j� �Ե��Gq@M�m���A��_{%���o�_�-�<ߟ��ko��i��j-������E	R�PjıJ7DvO�G��g�g�a����\R�I�'K�ki<�s�G�-�l���;N��o��]Fj�:�� ��b��)팰�\�9��������q/��x<� �sO�s�����,��ىdg[k�$��B�q�*�Rf�TJj;�V}_Z:f�5 V�X�LYVS���w�p����ך��_����� ��� ��ng1�"�����f�%�����Xsip��>�#F-fi�8ile4�!������&+m�;�C1���^kr$���sW2b���m&�z<e���� �4�kNgӞ�54�4���r�j�׾S/4�� @h$M* `�^�����wy�|U+�o+�q������AVd�ܞhV����a�>�J�*-;�ʅ��J�e9کr����[��댥ʆ�}�7���N��s�j���6R��������Y��/U>�s��:K�^�X-��-�Sl5(��ұj��r�shAi��]pD*�R3�:�ܤ����;O��h���\�US����k��K.8��C9?�d�+���3%ӣFL�ɑ�Rk嬣TP��ݵC����֫e�Cj�@k�ʤ������p�h�,V�����˿��Vr�~N�J�ѻ�؎��w����wN6��wo�=��_�k��>W��5�؎e�r�6��	�{/��F�Q��X��~R�#���J���g�ޖ��R�ER�ҵ�������:a�k��� ���z�O@�u��s��(��k�J�Cc�w:��$:���c��^v*�w'�i+]�RA�\�ן���(����u����ߍ��3W�
�����#1ux����*;�?RV�� vM��P�(P�Z�`��q\'�݃�:A���sM]Ӓg�������W��<���t�Z�u����\�ȿO3���̚^5��K ��
/}|;�N	H�������{5SB�f��j:��3���m��kw(�-rm��g9��.b�ev�h���$ָ�u�[.�Fj�\I-��a��2�ק��h������k�ڱc��s�?'=SUV�����W���_V�s�?�{�6�!U,��Ppa�g`=�� )Z�W��C���Q��٪Օ��-7����9v��5kd:w;����k!�8܎j���X��?�&H�|~%Zꮖ���4� /�z�7���^�\��eϕ�_��3 Z/���B2���tIbz�{�*]td�2b%�����ѣc�b����P{/5�Ż����r��B����Y��Y����W�-�-6�*3�����=�	`��\]K���s������r��Oj�]q�X�A�������c�,�X�y�Y��j�5ٙ#��z[�_���?����鑒��|��ʔ(���K�,��#�۟s���Z ez� �}���� 8�ɑ��.H�7L.��X�ء^���eIi:+�%�{ݸ�L�ӼV�m�h��RFJW�f���%Ԏ�m�|�����utme|��/���p����M�FW��y�v�:Y�}>�_�ik�]"KA�������iIgb����y��?R�:�R�)I{-(��4~
-�g���ߵ����<�F�K������9'�>�]/��:�� �h��<2.��<���~%�k�.�b(�y-mZψ�9Y����^/��������,%)��^�lI�}f�뉸�uio[/��g5Jϻf�B/�5������7���9�.�������"M�o^��{�z\�b��V�=J��j#l��Н�3b}=���:�kԓV����ޑ�z�f��_ݚ��=[z�R�(c�ҝĂ�=�����ð�{_+I�c.f���F�,:e�m�zu�s�<�-Zi��J�&-��W��s��c��攦�_���I*�>W��k+i������7F�����]�ZjX �%5��&K��*���S�{%=������ޛU�3_� ��k``b�����wr����:�ժ���%���<;����Ǧ�4 Z:ų~cUb{'0���m-R�ٟ~��������u�u�~���/3h[�����V!�����i�8,:��j��;����fgA����+R��: �e���t�����eʈ�ZNh�m���Ƕ5{��eqd�Zʜ&��qZj�%�����%4��o��~���JI.�<������]P[�Y}ׇ��>m���Q׷�ZPj~ʊB��*������+�9G9q��9���Ϫ��ϟ7�q^֟7Ik��t���݃]�-���k]��z���/Wx��Xi�r���6��Ce���2�^�e;�X~�J��w���'t%���<�� �`�DOd&6�o�iG~vٵ��^i<��?�R;Jqry9��[I�쪴SG��	[}#��Z���\/�nk}f���5�֕F�j����w��v�������9�<'��,%�Ӄ9#��)���A�+3�������~l�s/�g��(w�@M㮷!س`i��n�a�@c�E�>Ǟ��3��;�C�ڨ׌�p�k�2ݯ���Q�����=%��kYۀ�h��|�/���P]2�ꈴ��OwҘ�#�͖w��w���[�v@��UR?a��t��2���Pz,�_O���(y��G8�Jꐯ����K�sH-E�5���(�V�Q�Z��-��j�>I�1��c�XRZ������/�s����P����5�c��[J��͝#�v�2���=x���Zg֚{�:���#u�R��v���,���Z`,9�s~ ���3"�i�K�Z!�+L����eͨ�_�ȹ��/g�i)^�{�Y�J떒�Y��j��k�l1-C�t[$�ڧ�zGz���z6���Y���g�CKݙ�cVi��r�ڮ���S��D�* P[xkȏҲp��������+w����s\	�j��A���(�ì��_�u�jI�һ唺�_˹���5m�ѿQ�qd�~�>h�"�w��%:)_ ��}���N�&�޹��)/�T!���DA)���!��T�na�&��!%��X{�[�i�Z���3P�r�3e��s={z kd�[�~o	�k�wV���=ֶ�H�y.'ձ�e�,(y|΅�1�먄��o��*�#W�<ը����\b���R-e���i�7f�e��T�_����ūN7㚭�Q�dƨ�jk6X1�z��/��K�ٶ0B\HN
8J�ۚ��%�o�|�h�Ǆ����_���O�tE�dC7Sz$�Ĩ�sl���۟~���'�9��^B5��Z�\���&�*�ڗ��f���*vi ���b-=��=�==�z=���t���'���,g�:��Q7�t�4��Ո�RIg��}h����������_��hg��"�U�TCb�o����1j(	�*�Nl;����Zs����+�^�����]���2t_��hh��f˕u�ퟴ8]Jo�?���'ȕc�����"���B N�מV�=��#����>/�?[�B�}xէ���}�v�J�4�t)�;Y����`H��J�k݊�ޔ�W�"�=���wg��V�5BJS��Ф�ӈ�>��jϥ�M���僒��C���[c�4��T�п�,O�� �,
�Z�Yb����	7�����������>�����ݦ��<#�S |�;��������J��\�F0W��U�V�a�����p��^:j�{�jܧ�h=���\*�GB�*�m�=YQ�e�$sˊTP���Z����)�!��fK�h<#�F�ϯ��2�A&�k��R׾S�_�D�h�y���� �R#��NY	�kb��%��R�*���B�?�;Y���Z�!WwJ<o�+��/%S1r��R�Ъ���uZK�u�ڠ���GO��ߜ�}��:����X���ۻ�;9R$��h�m�lѹX'ڊ)ZV�	�����U{�-��G����F���$y���Gk�?1Z�F:J�/ر~]9���#�_mZA �-�oϯɺ�����������Lla�{��7/X�$�b����l�粺�3��4~v�2�z6u^������;�KZ>ߓ��K����3R�˥��*��k�\6����[��.��g���'W[$���XI��m�׻�I:��z�R��u�Vb���F���]������:����y��
)���D�L�nI�>����4�h�F��}�%�xYz_���T�X�pŞ��̲I<���F�N��ͩ��*�ּכ�s��z�le}���+��N[<Rj�����ߓ�~�֊�Vo��x"�]9�I�l_=>=��F�3���9�����>�Q��`����ڃiF������Yh�<�&53�3����S�P��t�(��3�R�f��={&�'M�ʚ�*��y��ϙQo�V�H�ּ�V�^���bV�%}FW���J�i4�F�tլְRfB�ҲT7����	��h�i1_�\nR���CW��*)#���G]��c, ~�(�qi������s�|���^j�������R�F^Ev�>���
�d%��R�e�R��bv �{�K�[� p�f���tO+N�R�t�&km���|MG���da�Һm*%0�
����w��5�\~f�����1ŉ��Q����";�f������o���x���bu�}�u�Z�QjԴ��mIg��>�TZK��h�C������+��+g-���1���~G�����2�wNn�e�zVDYZ��\�\Y���a�zX��8W�_��2f�?���Kj ]��+�	�Z���~g�C��(K������j��.yvd�1�@)/Om�UͿ���Z��i�CC�}���f��)��ۧCn��3�Gh�������,�w�g��E�.����;��{�n�=�����MH�_=�oU<C��	I��ɥJWyq��OI���Z�,��f������H~�ec����rg���Og�e�g(� �_6���D�E�z�<hJ]S��G�x�gW��&�22���k�
�_���mk4���,.��=Q:'�'Vw�)�N���]����5��e�=1�/Km���=ς�Wt��j�+r�y�;J�*����G�7F� ��ؚ��?��#�
`��l ��S-Ϫv�u�N=�� �$ �}�7��_�^M�]jL{ٞ�=�4�5U{��v�y��Y�����e�R{�W�������zu��վ���hf�l�̈�eb�r.YwKY��g�c*��>�ę�f�yf$Z����ݙep��Z���ј$���Hny��X�}9�+� ��/?�V 8�_��.7�z�Z��h� ����{�Q������Z~��PO�p�R�՝��,�o��v�3�<�ҁ����e�=���5W+�1#]v�G䔂%��������G���1ᴋR���
I� �smǫ$�Xq:rIu�{�+�H�=��j����u١)=��j�V��v5�Cc��.���<܏���>H�(�'RA쯿۟�҂�d�<ko�iay��RٺJ�;rW�-�w���;��7��4��Ps��� j�:�N�� x*�8�W4����W�4�>|�C���ׄ��޷h���!+����6���_�|K���)	���ko3��6��/��J��A�ZRin��F���o�<��{rm��� ���F����}'�3�=媧L[Y0c�<#@���?w&SiU��5��i�o|�{R���:��paͱ�� �"0�w'�>|��?q���:מ}Лyk#K5�_z��fE��켑AXK�e�y�=iXW�9u$�h�� �*��_�6�#f4�#ןJ��k���S���lVg��f�� ��)�;彇�I�����b��z�t�`��u�3�Z+������*z���k�kZ&S5�t��\n��z���s=`��I~6��T$��ə�y�js�|�r�Yѻ��h�l*�<�PxZ�*k.��U��G���ߞ_ݏD��M�Lj�gKg���l� P�|��z�3���;c�Ph�M�uFp�;�u2�?�@��-�����5��Y�L��-���~~�oj>�� �-�rU�*8~��=�a:]-I�4�ܩ1�Y�)1��,.��;�W��Ȋ�T=T�r��"јj<����;��כ[�����22 �Xͬ������պ���ཥ>���i]��m�nu؎툦��g����T`'u������ӤB\���#M���z�^��^���Zk�ni�/�J�"�ޕ�������:���f�/��%�����]+y6�dԾ��?��|`���ڙ��N�\��zn�k����k�{}���v�U��f�l�ه�r�u����H��ƿ�R}
���>��$>�-�s��^������5۷�Y�n��ڌ�#Jr5c�?��#�
VNw�~e�Hf��JϨu_]j���_�]?��]	#�#�������i]�T�ug�k���L��buƌ������W���������Ίq�O^����]�Ȋ���^?�N[�:�V�Ԭ$�n~ג/O郲��$�(g�_է�U ���ZϞ{�L�ّ)�����o�o���=?�}^Kؐ�~�ƿ�UZ��tJ.��K��|���W;X�ɑ���@���w^�|et+�H@wt�hBS��jύJݗ��qm����5ε�'����3�V�95�n�z@K���CL͈������!����rD�]����%���>ڞW�\�;��%f�G�ϸ��K����5�-3�Z� +�dg=g ��<��at�79�'z>3jd�����h�{�O��o4�a����9[�I�IzW�Y��i��%a[}u����W��ʱJ�����zӚ��r��wW����ބ�X�p�����,l�Ws��љD��b���0_M٫	T�&����e	��+�Z}t��I�R��j�=H�Fʽ^xW��p�)�FR�l��9��Z��V+ <_���u'9�3[�#�f��%%7x�S%jA�
��Y7/�7j�어46��i��Za�� ��bZ�]?u�������`ԌsoJ��R��k���A.[Wf�@�Oȸ �{��tf�K&�ԩǎ  WIDAT�aE���Yů+����s�@���=yQ:�~��g$X�gzW�^m���3);���"yN�;�y�|������l9lXY�n��t#���얅��է�c�p�U�>�=s������ �P�W����o��6=� 8q��ru�Iu�� �IA�Uuu��x�`81�r��C_��$ p��l�r���\W������~7w���	.!��N����j�~�ֵ�o�Y�� ����ڶQX�g �R;5���1��YAM'�)��vz����Ɓ���t��ܝle}hq๫8-{�Q�4v�3 ���i`� u؟-c��]�"z�{�����i/x���|+o��,X-+�?iױ�Z��`��w� �z	G9�g�g�ӵ��`� X�`-� ��g�yE�z�_J wF `��$��?���*� ��y�'�ڭ.�m f! 0�GcD��[c �G �g  ��  `+c���     p�/?��k�E      }      8       @      �      �       8       @      �      �       8       @      �      �       8       @      �      �       8       @      �      �       8       @      �      �       8       @      �      �       8       @      �      �       8       @      �      �       8       @      �      � _�s�W_     �����q���    IEND�B`�   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/world.png-f99131c31fda306b04161be8182aeffb.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://world.png"
dest_files=[ "res://.import/world.png-f99131c31fda306b04161be8182aeffb.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=2
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=0
process/fix_alpha_border=false
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
          [remap]

path="res://cellular_automata.gdc"
    �PNG

   IHDR   @   @   �iq�  9IDATx�����g}�_��]�r��<�c/@XCIJ�R���M�(��(�%`�RHB�l��*��
6	!TmH�IH�RU	�a1�l�g��ܙ;s�.g��������9瞙�@�tt�Y���~>����|� :��$��?z��G�r��):�Ŵ-tBJ��!h�
�6a� $�ڦ�� cZt�Tq�]G1����4tt(����Y�T�0I�����h�1Tٌd0�.
���A!B�ҴMMETY�P!$x[��T�Ft�sv�5o����c���(I���*0mK1��[]ô���>�p��i@��Q�f�m���(Ii���ȉ{}�i9|�	�DJE]�aHS�DI�C�$L��MC��PZF1:QZ�w�aD1�tB:�65I@>���5Jkz����uI>#�d��N1��6�󄀀�(|2!�˒��� d�s����(n"�"�0$JS�<Cj�OE�O')����DiQ���? ��i[�4�)K�PJ���$�>a#�d���!%U��u���B0��'HC��"�����_C�xg�Xx�U�u@>�P̦� p��!�l�p��x���*�~�o���z(p������(�S�^�0�h��i���.RJ�T��%��0�.�$��f��"��)e�9В��m V�%JR��Lvw�Ω��&���+�8Y\{6�uÍC.,��{Z�< �!�`�1�r6��ft]GSU�Wט�\!JR��~�{@����)�3�o�� 	���i譬R9Bz���!���ۗA@�����x�b겤.K��qL>�"��C�"�N���y�p}�l�O��;����3���q�5�(��M| �x�0�}8�^�4Q�Ҋ0�9��C|�����������?W��i[�4�m����+^�#waږ3�>L��aL��zU�Q%�%�½��(�A�����.��k���(I��c�5L���oPf3�$a��B8���yI�#�b�4%���߾|= �G�*
�������Uf�}����:>��_`tn��0:;��`].���k|�t8��z�K��d�!���א�_��pc�����5�ɘ"���71��#J�.m9O](EM]��4e	B�!J��,fSfy��K��� t�R�U�3Xߠ����ڹQ�T������4::3�
�=�B�8�@�>h�g����_�Iz}�Ʉ��GB"�"�S�Ʉ��h�(IPA@�`MK]��d�}�ҋ� ��Z�5-R)�@� !Q�"�� L�vY9|�b:��5Xki��(I����xC�@t��˥��wH����gF��7~��˭�x%:��!dDiJ[���i��t0��M������(诮�Ϧt֒VG�҇r�Қ���k-�1�*w��: L� �b��M��i��(I�Jq����p�*�9��yH�� o����� k��GgFо�_��.�D1�mL�`�!�R�Ѣ̩`��m���.��U�R�T)�|Fo��_�:����=@kk�Lv����I_�k>?z��x�h�X��@�=��ӿ*�wW�F�G<��C�x�Pf��LvvPA@�D.fu@��t�����yG]Sչc{E�5�0$��&c��L�v	�xQ�lv=���P�9+�#���k��/������ّs�������p�ݿ���"ׄM�&��뗹x�i�7��DI�C���e�`u��"Ck�e��[Y%	�(Mhk�m]UQƉ��i\�: ��Q�t)��v�=9Z0ET�t�7&X�v	$��7\{0��GO���/���(�J�T�Lw�D1:��_YCj�(��+�X��T%�x�ꑣ��H�C�ԅq��\��	"E�!<'�ӯ��en��7n��!��"\j��e/��� xo�9�bm.��$E�n�z����0m�ʡî�u���uMS��U�Bzo���YT�	2˞����z�,��>{��d󿻥O���%/�^/��_,�(!������6K� ���2�>Je�f��Q���6m]#�`��C1�"�$�c��;Dq|�\�fXc��\@:"�$����/���g��_h�d�<�UK!��m���?���8,U �h�� ���k-�m�^�2ϰ]���-:_�\�'��Ӷ�W�`�� �X�1�n��FHy}�	���%�暒W��T���OtM�g�=z	�`� �_;�!���XGG]��IJED�w��h�r6#���a�1-U�#��Cu�������?`���.=��PJ�t�k=`���!a�����-��<���}n������R�B$R`>��B�ִ�M�to�0�ОaD::� ��\A)�H�Q�Bf�{�9���t8D�£ڦ^V�&�ǧ/��Ty���6o���am����.����6�.U�h	$�&f)|��S�x�+�B�t��u�ݝ�"�q�G��XcP���f�>�1��,P���5uU��"�h�ʕV���y�&(PJ�)������ľ\�f�$.�A���� ,��Eΐ�yy�0���&��A&�;��Ŵ��7����*)�Sgh��Ʋv�����;(�$�m���(II�+� ��J�4%�������(I(f3L�0�8��[�pn>�����.����������0K!1�Ҿ��Ra��uY:	k}���I�8��cx�0m�"���fH�Y=|����R�J��k�k�˒ �|O�x�2 �m�A���}��v�����&�2z���\]���R�uK��;�!����1R)ں"���B+����ez++^J�N�n���T(�]��$�t�5��{���R-�j�6�q�G~�~��dt�����,yM��Ւ�إ��>^#�/���Gi�DW!��^�1�ih����QA@]�� ��Z�*��@ ����d��k����lD�p��,8t���~.y��D�Y��˞1e���'�,��f)<`~����4��ԴS���)����l�����,���Y�l�4M]!�&�b&;W]��厶m���)Nׅ�i���{�-I�9z��|�=��p�6�Y:�f	�eZ�-%R	�����}x�cw��"�!�k��O��VZ�M&QLS`;l��[YuMRBב���'c�ٌ֔2�R�s�0Nh��)�r�2��4^��a�������m���/uF���zc��[v�֟����|��r%#�c���b�k�p�5�5�tBu���RJ�rd��`�ٔ2�n"�L������%�$��@�i�����ル��5��ף�:��n ���ľkO����QA�[�z����Y�9�ڃ#'n'����AKU��(�!N���q]d3���6�I�N�������H?���Ζ��g�t�T�"��Ř�a�Q���C�y>{�PPf�V����/�c�}�B�ה��F���.������.�"NR_�B�$u��<_t��`H�`���^�����&	��
E6ô-AS9���*�(M)�Gf���˱��*�8&�S�U�("��Ȭ�*V�Z˳�?�=�����,��k�>���v��(�Iz}�Ήs�k��1�OjQ�,��^�t
�Қb:%�P̦Vר����譬,F_q�C*��GS���n�W���C�� �م	�ǡ5�����d��b���V[����(�wy�W~���PBmA	0���vp�?A���@:P��bzSf3W����3l�"���,�u.�v��S��rq�:i�8מ���W�[�x?؉��U��u��_�8r�(ڒ�~�V��`�����Jkf�{t����8���H:c;@{��t`;x���H63X[��+'q�N	�s7c\Y����KY1e��VM]D1BH������dg��CG�AH>�%	MmY9t۶4u����,>o�u9`��St]�#_�Zk�<C��ȧf�{�Y�TN�j�� �*� 0>�k{���^�uv��H%�߾����ζ����_��~]����U�v���J�8��!�dB�u�~�F��+L�v}�:����Nd]�� ��w��}�+|����p�!���k�9�Қ�?@*�/�8�HB �m����`��euB���Io@6�_PY�e�����ٔ��G����o`��8���9�R��kt�B���?$� <h�������_{�ϝz�s#�<�0�|����7~	�6�yN�;���FF'Nm=�� �9��p|e��������
BJ�-���"��^?ﻜQ䘶qU ���w��M^w�x��STyN:Rf�"Y��%J�҅s9/�MCg�g0r��;=0���W�	��������h��'<�gz�^L^���'鍯��թ���,i�
��$K)E>�.��1n|��n������t]�ӏ<�O���|�o��]�m?x�<$�iH�E�rJa���񀦪���� ҍ�F�G��=_$C�1��������=��۟GH���e��W	�Bq� ���ͧ�\���Yk��t0$�bV��fLww�^��l����B��$��.o�|�+�g�J2�:�?��O=� �/?�'H�lJF�۶�]�b��w^x�S��/x������s���=�8�5|���t�,�}�+���{1�;���H���<����n��~�%��b���XrR0\�`��K�5w�m]3��`��C�(�xr�w�~�+�n�C+�J?fg�1��?(��T��nf��M�u�Wט����I��3��l>���D�_bq�U*����S�'Zr������ӗ~� ��?��Hl繼BJIY��i���Mm�@��S�1�`H]�<���'�%�~��5D��/ȫ��XVox!�;��?�J�g R+�,#ݐ����x?�����O��$�r�[ �q?�$�=g;n;0r��������s!1�lp�{��w�6aqǝ�!�N�t�,M]q�mw%)O?� MUD!���e$��<��o�_$�.a�%E�R7-i��!���[��;��yL�����mQA��s�8�ѯ�_>���ݘ�Z���!V0k ��"�1�����$�������O�h�\k���:Bzf��'��Ư~��O���S?��J1<��0�if'^������nx��S������%5uc(�a�Z��B���V(%��o�/�?�'n�7\���#�"�/���n1�g�࿼���񵽱�C������1�@R�i���o?���O��ѢA����3O�|����._�L]�DQ�M7���c/$�b~�җ��6)��0p�CTMK���1;��$�c{s�.�<�}����]��� >vD
2�
�Z�	 y�<`��5��h(�{_�`R��(�<)�`��c/:IeB�ύ��o����u �$�̙3|�ҧ��K~��n� ԊA�3�	�$�ʺ�j+��YQc�e��P�-i0�K����-��9�;q��u�S[w���������u@d�� ��k��}�Vvu�8�w�CW٨|�h�_p�P�����ŝt]�1���ä��ܽ�-�z|�a/"/�@j��,eբ��؎4rQ�-J
}z���yB����G��y�W��k����]��F��Ԍ!���c�bv���� �~t<��W� ;�����#�����bwyӧG�y��Vx�XB��Y֎Һp�PRR�-+��I^"�Ӑ��y�yjD��ٙe�Ċ�o��^�N�2p�p�-���.A�@e�<䙱K��|��Ŭ��N��S]�v�(����^)�mK]$�!ƴ<��W�����l?� ��]`V;.���#w� rU9+swM��P�(\�%�S�<=B	8;�[��i��8�y��o�>�W����sv/{�.�I����蟝��P��~!�����T�rc�Ҙ�Y��5��k-Aqf�w^~S\��Ws��eC�>�6�;��gp���9 Zˢ|7��~_��{o{�q���E#�������o���{�Ꮇ��s�=G���e���ǩ^r'���?�̦Ľ��C��JI��0M�T�|2v�L�wI+��F�`Anz+��uM>���fo�9.��$�Rg�$��3�2B�X�h]^�?+�S����E.\�(
��v��o��{����-��Or��%� ��k���?���2;�RN��5Xk�� ������#��[��c:kK�RHںZ���mCu!E6#Nz$��a�~��x���Γ�yɭ= J��,=(=��K_aN���ݽ���8 ��[k��`kk��H�p�y����Ǭ%I��1g?����\�Y�(�f�駈ℶ�����	A.���f�~?��:���> v2���Nz���.���=�`Vôq�C��������C�4�~tf��'� ��/�9��m	�Q����k���u��+�e�ۀ�t��t��Ε�B�&G�+�&w���=/������)2^Ŗ�t�AȀ�42z�_�o�x#�}gXֺ�]g`?p�>�Z�V�C��ܶ��KUE�$T�[�o��f�� ���G�x�"Zk/�A�6*����l+lU �BD�jBg[��t�F�]B5�k+��!�΁�Xdd0e�j�lP]�z�y̏��Z����Y��Q�>���V��K�@��ܹs�|��A�1�K�ɶ-q���^�\�t	�5MӐeUU��9UUa����е $Bjl~�ik� ��k2d�G&k��
��P�#t�E�����{Þ_�b��iv��7_w���M�{�9�������r�p'|zΌ��̹�����
|����y�g�RJI]״m˕+W8{�,o
z�UYc�Z�1u]��Bk�1�^�G����;]�g8"'>H!1��3:�d2����_A�\ڶ@�}��x��\�p�(�y[[[�����'��Eo�8�ϳ�xm��8��O.>1�/���t!�uڢ(x�|�(�+O��g[������E�B�	��<���9ͯ}M��N �U�R�b:�P��ض@)�[M:�_s������ɶԗc+�Z @UU�q̥K���-[�������Iʲ���N^8t�k�4����#^X��a�HU&\E�~Q���m�.~k�	Ð��M~�-���J�J��D'$��s^��ksD��,��-����ڼ����M.^TTUEUUDQ���Z677�Z/JؼR����������|��,�0yz��5es�(׬U��`0�Z��;uB�4��k��Ak�ŋ��=Ư~��k���.�h�J�1�������z櫀E=l��L����>���[��~��x!RJ�  C�,#�c�� C��1����1���'��-CG�B��ƴ�ܝk���1�l�����A��7ވ֚�KdN$ڶ�m[Ξ=���{����;P�: ����XFY\K�}�={�'��˗/s����APU�"ͯe��2v����Eo�8�g��vν��J�m}�D{�8W��*_�REAE����PJq��E�(b�#*���^w�Τ'T���L�@:0��ej۹�݊^KY��%�kۯ�n��:�<'?/p���wL]�W��8�����t��$M-�Ü)���]���URXw�\x�]��ȧMQ 9=By ���us��g�6[��Q�u%��P�����EBN��(��Y��>������hiAͷ�sqgN��~��k 8y����w�G�k������џ�tŻ���n
    IEND�B`�              ECFG
      _global_script_classes             _global_script_class_icons             application/config/name          GPU Cellular Automata      application/run/main_scene$         res://CellularAutomata.tscn    application/config/icon         res://icon.png     display/window/stretch/mode         2d     display/window/stretch/aspect         keep%   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_clear_color      ��5?��r?  �?  �?            