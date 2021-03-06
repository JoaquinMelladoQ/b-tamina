module BreweriesHelper
    def clients_by_distance(clients,current_brewery)
        distance_matrix=[[	0	,	1	,	2	,	3	,	4	,	5	,	6	,	7	,	8	,	9	,	10	,	11	,	12	,	13	,	14	,	15	],
                        [	1	,	0	,	1	,	2	,	3	,	4	,	5	,	6	,	7	,	8	,	9	,	10	,	11	,	12	,	13	,	14	],
                        [	2	,	1	,	0	,	1	,	2	,	3	,	4	,	5	,	6	,	7	,	8	,	9	,	10	,	11	,	12	,	13	],
                        [	3	,	2	,	1	,	0	,	1	,	2	,	3	,	4	,	5	,	6	,	7	,	8	,	9	,	10	,	11	,	12	],
                        [	4	,	3	,	2	,	1	,	0	,	1	,	2	,	3	,	4	,	5	,	6	,	7	,	8	,	9	,	10	,	11	],
                        [	5	,	4	,	3	,	2	,	1	,	0	,	1	,	2	,	3	,	4	,	5	,	6	,	7	,	8	,	9	,	10	],
                        [	6	,	5	,	4	,	3	,	2	,	1	,	0	,	1	,	2	,	3	,	4	,	5	,	6	,	7	,	8	,	9	],
                        [	7	,	6	,	5	,	4	,	3	,	2	,	1	,	0	,	1	,	2	,	3	,	4	,	5	,	6	,	7	,	8	],
                        [	8	,	7	,	6	,	5	,	4	,	3	,	2	,	1	,	0	,	1	,	2	,	3	,	4	,	5	,	6	,	7	],
                        [	9	,	8	,	7	,	6	,	5	,	4	,	3	,	2	,	1	,	0	,	1	,	2	,	3	,	4	,	5	,	6	],
                        [	10	,	9	,	8	,	7	,	6	,	5	,	4	,	3	,	2	,	1	,	0	,	1	,	2	,	3	,	4	,	5	],
                        [	11	,	10	,	9	,	8	,	7	,	6	,	5	,	4	,	3	,	2	,	1	,	0	,	1	,	2	,	3	,	4	],
                        [	12	,	11	,	10	,	9	,	8	,	7	,	6	,	5	,	4	,	3	,	2	,	1	,	0	,	1	,	2	,	3	],
                        [	13	,	12	,	11	,	10	,	9	,	8	,	7	,	6	,	5	,	4	,	3	,	2	,	1	,	0	,	1	,	2	],
                        [	14	,	13	,	12	,	11	,	10	,	9	,	8	,	7	,	6	,	5	,	4	,	3	,	2	,	1	,	0	,	1	],
                        [	15	,	14	,	13	,	12	,	11	,	10	,	9	,	8	,	7	,	6	,	5	,	4	,	3	,	2	,	1	,	0	]]
        distance_to_current_brewery={}
        brewery_region= Region.find_by(name: current_brewery.region)
        clients.each do |client|
            client_region=Region.find_by(name: client.region)
            distance_to_current_brewery[client]=(distance_matrix[(brewery_region.id)-1][(client_region.id) -1])
        end

        array=distance_to_current_brewery.sort_by{|k, v| v}

        clients_by_distance=array.map do |array|
            array[0]
        end

        return clients_by_distance
    end
    
end
