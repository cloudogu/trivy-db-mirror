# trivy-db-mirror

⚠️ Archived because there is [official mirror](#official-mirror).

A mirror of the [trivy](https://github.com/aquasecurity/trivy) vulnerability databases, that is updated automatically.

* [aquasecurity/trivy-db](https://github.com/aquasecurity/trivy-db)
* [aquasecurity/trivy-java-db](https://github.com/aquasecurity/trivy-java-db)

You can create your own mirror by just forking this repo.  
The [GitHub Action](.github/workflows/mirror-dbs.yml) will then regularly update the OCI artifacts:

* [trivy-db](../../pkgs/container/trivy-db)
* [trivy-java-db](../../pkgs/container/trivy-java-db)

Use the mirror like so, for example:

```bash
trivy image \
  --db-repository ghcr.io/cloudogu/trivy-db \
  --java-db-repository ghcr.io/cloudogu/trivy-java-db \
  --scanners vuln \
  ghcr.io/cloudogu/gitops-playground:0.7.0
```

## Official mirror

Note that there also is an [official one at AWS](https://github.com/aquasecurity/trivy-java-db/blob/cfb7fef466315d85e48965f9b2d85a3f270aa8cc/.github/workflows/cron.yml#L52):

```shell
 trivy image \
  --db-repository public.ecr.aws/aquasecurity/trivy-db \
  --java-db-repository public.ecr.aws/aquasecurity/trivy-java-db \
  --scanners vuln \
  ghcr.io/cloudogu/gitops-playground:0.7.0
```

## License
Copyright © 2024 - present Cloudogu GmbH

This program is free software: you can redistribute it and/or modify it under the terms of the GNU Affero General Public License as published by the Free Software Foundation, version 3.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License along with this program. If not, see https://www.gnu.org/licenses/.

See [LICENSE](LICENSE) for details.

## Written Offer
Written Offer for Source Code:

Information on the license conditions and - if required by the license - on the source code is available free of charge on request.  
However, some licenses require providing physical copies of the source or object code. If this is the case, you can request a copy of the source code. A small fee is charged for these services to cover the cost of physical distribution.

To receive a copy of the source code, you can either submit a written request to

Cloudogu GmbH  
Garküche 1  
38100 Braunschweig

or you may email hello@cloudogu.com.

Your request must be sent within three years from the date you received the software from Cloudogu that is the subject of your request or, in the case of source code licensed under the AGPL/GPL/LGPL v3, for as long as Cloudogu offers spare parts or customer support
for the product, including the components or binaries that are the subject of your request.

