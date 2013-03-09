ios-examples
============

Some examples of iOS code

<h2>zombies</h2>
<p>Example how to create zombie object and let application crash on accessing it. There are 2 viewControllers. In scViewController we create 2 objects - holder and zombie. Holder only stores zombie object. After that we switch to second controller with holder object.<br />
Now let's try to change line 15 in scHolder.h (@property (assign, nonatomic) scZombie *zombie;)
<ul>
<li>@property (<strong>strong</strong>, nonatomic) scZombie *zombie; - everything is OK. Zombie speaks</li>
<li>@property (<strong>weak</strong>, nonatomic) scZombie *zombie; Zombie is allready deallocated, but weak pointer nills it. So speak does nothing</li>
<li>@property (<strong>assign</strong>, nonatomic) scZombie *zombie; Zombie is deallocated and aplication crashes. See the diference with nszombieenabled on/off</li>
</ul>
</p>


</ul>
