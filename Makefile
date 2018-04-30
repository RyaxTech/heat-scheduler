# Copyright 2016 The Kubernetes Authors All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Use:
#
# `make container` will build a container-- you must supply a tag.
# `make push` will push the container-- you must supply a tag.

REPO = nerdalize/
NAME = heat-scheduler-extender
TAG = 0.2.2

build:
	docker build -t $(REPO)$(NAME):$(TAG) .

push: build
	docker push $(REPO)$(NAME):$(TAG)