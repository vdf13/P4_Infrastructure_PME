;
; BIND data file for local loopback interface
;
$TTL	604800
$ORIGIN VDF-entreprise.com.
@	IN	SOA	ns1.VDF-entreprise.com. admin.VDF-entreprise.com. (
			2019102701	; Serial
			3600		; Refresh
			3000		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS	ns1.VDF-entreprise.com.
@	IN	MX	10 mx1
ns1	IN	A	192.168.10.241
www	IN	A	10.0.10.1
mx1	IN 	A 	10.0.10.1
