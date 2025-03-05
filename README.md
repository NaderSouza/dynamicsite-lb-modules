# Lab de uso do AWS EC2 com Load Balancer e Módulos Terraform

O objetivo desta atividade é explorar na prática os conceitos de computação em nuvem utilizando os serviços **AWS Elastic Compute Cloud (EC2)** e **AWS EC2 Elastic Load Balancing**, além de demonstrar a modularização da infraestrutura com **Terraform**.

A infraestrutura é dividida em **módulos**, permitindo um gerenciamento mais organizado e reutilizável:

- **Módulo de Rede (`network`)**: Responsável pela criação da **VPC**, sub-redes e demais recursos necessários para a comunicação da infraestrutura.
- **Módulo de Computação (`compute`)**: Provisiona instâncias **EC2**, definindo a AMI, chave de acesso e associando as instâncias às sub-redes criadas no módulo de rede.

O **Elastic Load Balancing (ELB)** distribui automaticamente o tráfego de entrada entre múltiplas instâncias EC2 espalhadas em diferentes Zonas de Disponibilidade (AZs), garantindo maior disponibilidade e escalabilidade para a aplicação.

## **Referências**

- [AWS EC2](https://aws.amazon.com/pt/ec2/)
- [AWS Elastic Load Balancing](https://aws.amazon.com/pt/elasticloadbalancing/)
- [Terraform](https://developer.hashicorp.com/terraform/docs)

## **Arquitetura alvo**

![Architecture](/images/architecture.jpg)
