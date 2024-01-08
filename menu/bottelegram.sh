#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY�
MN P��u������������PD@  `g_.�m��T� 	B!41��&!=2О�i��i�FQ��j HzA��h 4         4 A�� ��dCF� 1@T��Le�m&��    �   44 A�� ��dCF� 1@D�4�L�S�D�މ�C�SPƣ��?Tѣ@ѵHz��US��rƼ?K=�D�b��.+tA����vH��M5j9�^ +zt]7�W�X��4e�i Bp|�8�@*�����<�w��L?F��t���-˝%Xiک�+�mTۅ���C��MH�� ��3kJ�%q�<��%>sA{Q��6Zi=`��M���-s��rJ��9���n��F$j�M���a�DX/Q"�/���EK�9k˅d���l����Z ��BA,�R�CCp��`+��Y	P�H�T:�n`���f�o �]�JfR-�6���qP:Tf}�_%5(���_@�EP������Q���&re3
{��P��0ˇ�Uo�4��`��&I��D��s�}s+T�bp�"T�[Ufq������W��=%�R��.A�H ;�˷uL����JIT��PS�i�Q���rM+�0x�cⴶ����s11�G��7�,! �a2/�,����H �c�v�Z�E.n�2�2���r)F�A�!�
�<�Ϫ *����c,�6PC4���m�w�d�Ѧ1J~-�� �_s�T �^��0�gj.x���1�G���g�q��1���cHD���
!Ы�>��Y�t�
B�R �.������Y3V�&����}�Sf��f�q�IҒ'ʐ,V�<B�����D	��%Mg*�E^�-C�k+4y3(��T�'�)����[U�m+�H�5�&!��581%��� =���}g��}����ueΊc���L,c�����1�<Z]J�)<����y!k���5����{.�Xj���xXn@`�cI)k"�9?	*]�J&����~���J��E��:���i�s�U����5��?C $�sZ@Of�κ�����Ĺ� �=5��	�]��0i��AmL�?�<| 2�m�������h�v��*�"�A@?����Mn_ *�o�d�ddܭ��� �Hɠ
^`����͂�������C@Y�I�é��\�r��RO������
�y�A��++Bgެ��k�*~��U������S�����Gt����g*�N	��1S�N��9Th=[�4�E�[��`����l�B����mN�����F.��(S����m<W��/�w4���r48��"r����
��Y�Lmp���X" �>\|\Rþ�Dlle�t1X�$vK��3�껍��_��kQʟ/7.�C�f�s�3���(�$d�QNan��g׷�E�c��*LH�5�F�M�oH�������vk� ��(,V���T�¶�����������=�.?�Ca����r��`�����b����E��O_�r/e��H��:O�1Bt&��]i�dc�ţ.��ڬm��0�h0�X灺ʕ�� �5s��4?=�N��W9� ӫpX��#V��%B����^B�E�h�ɵ �2u��?A���=}n*G����������ɓ `&1��]��BB)58