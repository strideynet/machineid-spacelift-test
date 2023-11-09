FROM public.ecr.aws/spacelift/runner-terraform:latest as spacelift

USER root

RUN apk add gcompat

USER spacelift