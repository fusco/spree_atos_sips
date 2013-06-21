# Spree Atos/Sips

## Français

### Description
La gem spree_atos_sips permet d'intégrer simplement la méthode de paiement de Atos Worldline à votre site e-commerce Spree.


### Installation

1. Pour l'installer, il suffit d'ajouter la ligne suivante à votre Gemfile suivnat votre version de Spree
<pre>
    gem 'spree_atos_sips', :git => 'https://github.com/fusco/spree_atos_sips.git'
    gem 'spree_atos_sips', :git => 'https://github.com/fusco/spree_atos_sips.git', :branch => '2-0-stable'
</pre>

2. Effectuez ensuite un bundle install

<pre>
	bundle install
</pre>

### Configuration

1. Rendez-vous sur votre panneau d'administration (http://monsite.com/admin)

2. Allez ensuite dans "Configuration", puis "Payment Methods"

3. Cliquez sur "Add New Payment Method"

4. Entrez les paramètres qui vous plaisent, choisissez "Spree::BillingIntegration::Atos::Sips" comme provider, puis enregistrez

5. De nouveaux champs sont présents, remplissez les (merchant id, banque)

6. Placez ensuite les fichiers (binaires, certificats, etc) selon l'architecture suivante dans votre projet rails:

7. Changer les chemins des fichiers pathfile et parmcom.xxxxxxxxxxxxxxx

| mon_commerce
|----lib (d)
|-------L atos (d)
|-------------L bin (d)
|------------------L request (f)
|------------------L response (f)
|-------------L nom_du_systeme_bancaire (d) (mercanet, sogenactif, webaffaires....)
|----------------------L certif.fr.identifiant  (f)
|----------------------L parmcom.identifiant (f)
|----------------------L parmcom.banque  (f)
|----------------------L pathfile (f)



## English

### Description
The spree_atos_sips gem allows you to put easily the payment method from Atos Worldline in your Spree e-commerce website.


### Installation

1. To install the gem, just put the following in your Gemfile.

<pre>
    gem 'spree_atos_sips', :git => 'https://github.com/fusco/spree_atos_sips.git'
    gem 'spree_atos_sips', :git => 'https://github.com/fusco/spree_atos_sips.git', :branch => '2-0-stable'
</pre>

2. Then, bundle install

<pre>
	bundle install
</pre>

### Configuration

1. First, go on your administration pannel (http://monsite.com/admin)

2. Then, click on "Configuration", and "Payment Methods"

3. After this, click on "Add New Payment Method"

4. Configure the name, description, etc as you want and just choose "Spree::BillingIntegration::Atos::Sips" as provider. Then, save.

5. Some new fields appeared (merchant id, banque), fill them.

6. put the files the bank gave you (binaries, certificates, etc) on the right place, according to the following architecture:

7. Change path in files pathfile and parmcom.xxxxxxxxxxxxxxxx

| mon_commerce
|----lib (d)
|-------L atos (d)
|-------------L bin (d)
|------------------L request (f)
|------------------L response (f)
|-------------L bank_system_name (d) (mercanet, sogenactif, webaffaires....)
|----------------------L certif.fr.identifiant  (f)
|----------------------L parmcom.identifiant (f)
|----------------------L parmcom.banque  (f)
|----------------------L pathfile (f)

Copyright (c) 2011 [name of extension creator], released under the New BSD License
