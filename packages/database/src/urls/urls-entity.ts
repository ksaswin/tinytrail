import { Database } from '../entities'

export type UrlsEntity = Database['tinytrail']['Tables']['urls']['Row']
export type UrlsUpsertEntity = Database['tinytrail']['Tables']['urls']['Update']
