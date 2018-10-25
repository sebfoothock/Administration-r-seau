;
;BIND File
;

$TTL 1d
$ORIGIN wt13.ephec-ti.be.
@       1D      IN      SOA     ns1.wt13.ephec-ti.be. root.wt13.ephec-ti.be. (
                                1       ; serial
                                3H      ; refresh
                                15      ; retry
                                1w      ; expire
                                3h)     ;

;NS RECORDS
        IN      NS              ns1.wt13.ephec-ti.be.           ;Utilisé pour définir quels serveurs répondent pour cette zone.

;A Records
ns1     IN      A       54.37.65.49                     ; Cet enregistrement fait correspondre une adresse IP à un nom de machine.


;Configuration WEB

web             IN      A       54.37.65.49

www             IN      CNAME   web
b2b             IN      CNAME   web
intranet        IN      CNAME   web

; config mail

mail            IN      A       54.37.65.49
smtp                                    IN      CNAME   mail
pop3                                    IN      CNAME   mail
imap                                    IN      CNAME   mail

mail._domainkey IN      TXT     ( "v=DKIM1; h=sha256; k=rsa; "
          "p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA4qNRf1fTBtN2+nfhKL9agKNmS4vkcocSFLrHOYxY59za4yR6jMoqNfOVRHF77jqbn8YVOnLD7TmSYckjg7BCZ7aPuOigGHJx9gO4dHHgWd467cbw0gDiphfQJXi7h5nSMdkfxGeOL970qqh786/4XmC5vq2odEx6Cxoxbx6crZjqQKsRx7FKxB5H9sTHJTC45oypu7N1fMs6Je"
          "X6hJgfOfX1L0+5M2E6ujI9O3cGluGuSivS8xH/9Zyx5uikW1W3UvShmBXnKCvalO5AePWwc3sI6xxNDVUn2ELA5rsC5d8XcwMDbniNvUKieS9UH77W0Bo50Li/FIqSpUkfTcWfawIDAQAB" )  ; ----- DKIM key mail for wt13.ephec-ti.be

