public class SlimeBase extends OSCBase {
	// host name and port
	string hostname[7];
	"shrpi.slime.test" => hostname[0];
	"shmac.slime.test" => hostname[1];
	"jbrpi.slime.test" => hostname[2];
	"jblap.slime.test" => hostname[3];
	"sfrpi.slime.test" => hostname[4];
	"sfmac.slime.test" => hostname[5];
	"shnet.slime.test" => hostname[6];
	10000 => portNumber;

hostname.size() =>  int slimeSize;

<<< "slime-size", slimeSize >>>;

function void slimeCore(string ns)
{
        for(0 => int i; i < slimeSize; i++)
        {
                //hostname[i] => string nss;
                sendOSC(hostname[i],portNumber,ns);
               // <<< "slime: ", ns >>>;
        }

}

function void slimeCore(string ns, float f)
{
        for(0 => int i; i < slimeSize; i++)
        {
                //hostname[i] => string nss;
                sendOSC(hostname[i],portNumber,ns,f);
               // <<< hostname[i] >>>;
        }
<<< ns >>>;
}

function void slimeCore(string ns, int i1)
{
        for(0 => int i; i < slimeSize; i++)
        {
                //hostname[i] => string nss;
                sendOSC(hostname[i],portNumber,ns,i1);
                // <<< hostname[i] >>>;
        }
<<< ns >>>;
}

function void slimeCore(string ns, int i1, int i2)
{
        for(0 => int i; i < slimeSize; i++)
        {
                //hostname[i] => string nss;
                sendOSC(hostname[i],portNumber,ns,i1,i2);
          //      <<< hostname[i] >>>;
        }
<<< ns >>>;
}

function void send()
{
	slimeCore("/slime/user/sh/test");
}

function void send(string ns) 
{
	slimeCore(ns);
}

function void send(string ns, float f)
{
	slimeCore(ns,f);
}

function void send(string ns, int i1, int i2)
{
        slimeCore(ns,i1,i2);
}

}

//SlimeBase s;

//s.send();

//<<< "test 1" >>>;

//s.send("/test");

//<<< "test 2">>>;

//s.send("/test", 100.0);
