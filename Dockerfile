FROM ansibleplaybookbundle/apb-base
MAINTAINER Ansible Playbook Bundle Community

LABEL "com.redhat.apb.version"="0.1.0"
LABEL "com.redhat.apb.spec"=\
"aWQ6IGE4ZTY1MmMxLTExZTAtNDIwMi1iNmRmLTA5NTE3Zjc1ZWY5YQpuYW1lOiByaHNjbC1tYXJp\
YWRiLWFwYgppbWFnZTogYW5zaWJsZXBsYXlib29rYnVuZGxlL3Joc2NsLW1hcmlhZGItYXBiCmRl\
c2NyaXB0aW9uOiBNYXJpYWRiIGFwYiBpbXBsZW1lbnRhdGlvbgpiaW5kYWJsZTogVHJ1ZQphc3lu\
Yzogb3B0aW9uYWwKbWV0YWRhdGE6IAogIGRvY3VtZW50YXRpb25Vcmw6IGh0dHBzOi8vbWFyaWFk\
Yi5jb20va2IvZW4vbWFyaWFkYi9kb2N1bWVudGF0aW9uLwogIGxvbmdEZXNjcmlwdGlvbjogRGVw\
bG95cyBhIGJpbmRhYmxlIG1hcmlhZGIgaW5zdGFuY2UKICBkZXBlbmRlbmNpZXM6IFsncmhzY2wv\
bWFyaWFkYi0xMC1yaGVsNyddCiAgZGlzcGxheU5hbWU6IFJIU0NMIE1hcmlhREIgKEFQQikKICBj\
b25zb2xlLm9wZW5zaGlmdC5pby9pY29uQ2xhc3M6IGljb24tbWFyaWFkYgogIApwYXJhbWV0ZXJz\
OiAKICAtIG15c3FsX2RhdGFiYXNlOgogICAgICBkZWZhdWx0OiBhZG1pbgogICAgICB0eXBlOiBz\
dHJpbmcKICAgICAgZGVzY3JpcHRpb246IE1hcmlhREIgZGVmYXVsdCBkYXRhYmFzZSBuYW1lCiAg\
ICAgIHRpdGxlOiBNYXJpYURCIERhdGFiYXNlIG5hbWUKICAgICAgCiAgLSBteXNxbF9yb290X3Bh\
c3N3b3JkOgogICAgICBkZWZhdWx0OiBhZG1pbgogICAgICB0eXBlOiBzdHJpbmcKICAgICAgZGVz\
Y3JpcHRpb246IEEgcmFuZG9tIGFscGhhbnVtZXJpYyBzdHJpbmcgaWYgbGVmdCBibGFuawogICAg\
ICAKICAtIG15c3FsX3VzZXI6CiAgICAgIGRlZmF1bHQ6IGFkbWluCiAgICAgIHR5cGU6IHN0cmlu\
ZwogICAgICBkZXNjcmlwdGlvbjogTWFyaWFEQiBVc2VyCiAgICAgIAogIC0gbXlzcWxfcGFzc3dv\
cmQ6CiAgICAgIGRlZmF1bHQ6IGFkbWluCiAgICAgIHR5cGU6IHN0cmluZwogICAgICBkZXNjcmlw\
dGlvbjogQSByYW5kb20gYWxwaGFudW1lcmljIHN0cmluZyBpZiBsZWZ0IGJsYW5rCiAgICAgIAog\
IC0gbWFyaWFkYl92ZXJzaW9uOgogICAgICBkZWZhdWx0OiAiMTAuMCIKICAgICAgZW51bTogWycx\
MC4wJywgJzEwLjEnXQogICAgICB0eXBlOiBlbnVtCiAgICAgIHRpdGxlOiBNYXJpYURCIFZlcnNp\
b24KICAgICAgCiAgCnJlcXVpcmVkOiAKICAtIG1hcmlhZGJfdmVyc2lvbgogIC0gbXlzcWxfZGF0\
YWJhc2UKICAtIG15c3FsX3VzZXIKICAK"

COPY roles /opt/ansible/roles
COPY playbooks /opt/apb/actions
RUN chown -R apb /opt/{ansible,apb} \
    && chmod -R g=u /opt/{ansible,apb}

USER apb
