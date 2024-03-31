#!/bin/bash

# Si DRY_RUN est défini et égal à true, alors afficher les commandes sans les exécuter.
if [ "${DRY_RUN}" = "true" ]; then
  echo "Mode Dry Run activé. Les commandes suivantes seraient exécutées :"
  echo "docker push ${REPOSITORY_PREFIX}/spring-petclinic-config-server:${VERSION}"
  echo "docker push ${REPOSITORY_PREFIX}/spring-petclinic-discovery-server:${VERSION}"
  echo "docker push ${REPOSITORY_PREFIX}/spring-petclinic-api-gateway:${VERSION}"
  echo "docker push ${REPOSITORY_PREFIX}/spring-petclinic-visits-service:${VERSION}"
  echo "docker push ${REPOSITORY_PREFIX}/spring-petclinic-vets-service:${VERSION}"
  echo "docker push ${REPOSITORY_PREFIX}/spring-petclinic-customers-service:${VERSION}"
  echo "docker push ${REPOSITORY_PREFIX}/spring-petclinic-admin-server:${VERSION}"
else
  # Mode normal : Exécuter les commandes de push.
  docker push ${REPOSITORY_PREFIX}/spring-petclinic-config-server:${VERSION}
  docker push ${REPOSITORY_PREFIX}/spring-petclinic-discovery-server:${VERSION}
  docker push ${REPOSITORY_PREFIX}/spring-petclinic-api-gateway:${VERSION}
  docker push ${REPOSITORY_PREFIX}/spring-petclinic-visits-service:${VERSION}
  docker push ${REPOSITORY_PREFIX}/spring-petclinic-vets-service:${VERSION}
  docker push ${REPOSITORY_PREFIX}/spring-petclinic-customers-service:${VERSION}
  docker push ${REPOSITORY_PREFIX}/spring-petclinic-admin-server:${VERSION}
fi

